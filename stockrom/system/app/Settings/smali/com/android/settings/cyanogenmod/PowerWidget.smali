.class public Lcom/android/settings/cyanogenmod/PowerWidget;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerWidget.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetOrder;,
        Lcom/android/settings/cyanogenmod/PowerWidget$PowerWidgetChooser;
    }
.end annotation


# instance fields
.field private mPowerWidget:Landroid/preference/CheckBoxPreference;

.field private mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

.field private mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

.field private mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 426
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    const v1, 0x7f050029

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/PowerWidget;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 79
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "expanded_widget"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v1, "expanded_hide_onchange"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v1, "expanded_hide_scrollbar"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    .line 85
    const-string v1, "expanded_haptic_feedback"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    .line 87
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "expanded_view_widget"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "expanded_hide_onchange"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "expanded_hide_scrollbar"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_haptic_feedback"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 103
    .end local v0           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void

    .restart local v0       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_1
    move v1, v3

    .line 90
    goto :goto_0

    :cond_2
    move v1, v3

    .line 93
    goto :goto_1

    :cond_3
    move v2, v3

    .line 96
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 107
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, intValue:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, index:I
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "expanded_haptic_feedback"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v2, 0x1

    .line 114
    .end local v0           #index:I
    .end local v1           #intValue:I
    :goto_0
    return v2

    .restart local p2
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 120
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 121
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 122
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_view_widget"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 127
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_hide_onchange"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 130
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 131
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/PowerWidget;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 132
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/PowerWidget;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "expanded_hide_scrollbar"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 137
    .end local v0           #value:Z
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
