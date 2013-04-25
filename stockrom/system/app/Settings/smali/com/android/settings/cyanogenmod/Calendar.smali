.class public Lcom/android/settings/cyanogenmod/Calendar;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Calendar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
    }
.end annotation


# instance fields
.field private mCalendarLookaheadPref:Landroid/preference/ListPreference;

.field private mCalendarPref:Landroid/preference/CheckBoxPreference;

.field private mCalendarRemindersOnlyPref:Landroid/preference/CheckBoxPreference;

.field private mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

.field private mCalendarShowLocationPref:Landroid/preference/ListPreference;

.field private mCalendarsPref:Landroid/preference/MultiSelectListPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 187
    return-void
.end method

.method private mapLookaheadValue(Ljava/lang/Long;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 175
    .local v2, resources:Landroid/content/res/Resources;
    const v4, 0x7f070080

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, names:[Ljava/lang/String;
    const v4, 0x7f070081

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 179
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    aget-object v4, v1, v0

    .line 184
    :goto_1
    return-object v4

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b03d1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private mapMetadataValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 160
    .local v2, resources:Landroid/content/res/Resources;
    const v4, 0x7f070082

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, names:[Ljava/lang/String;
    const v4, 0x7f070083

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 164
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    aget-object v4, v1, v0

    .line 169
    :goto_1
    return-object v4

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b03d1

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    .line 65
    const v6, 0x7f05000e

    invoke-virtual {p0, v6}, Lcom/android/settings/cyanogenmod/Calendar;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 70
    .local v5, prefSet:Landroid/preference/PreferenceScreen;
    const-string v6, "lockscreen_calendar"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarPref:Landroid/preference/CheckBoxPreference;

    .line 71
    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarPref:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "lockscreen_calendar"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 74
    const-string v6, "lockscreen_calendars"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/MultiSelectListPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    .line 75
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "lockscreen_calendars"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/MultiSelectListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 77
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Calendar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->findCalendars(Landroid/app/Activity;)Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;

    move-result-object v0

    .line 79
    .local v0, calEntries:Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 82
    const-string v6, "lockscreen_calendar_reminders_only"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarRemindersOnlyPref:Landroid/preference/CheckBoxPreference;

    .line 84
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarRemindersOnlyPref:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "lockscreen_calendar_reminders_only"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_1

    :goto_1
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    const-string v6, "lockscreen_calendar_lookahead"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    .line 89
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_lookahead"

    const-wide/32 v9, 0xa4cb80

    invoke-static {v6, v7, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 91
    .local v1, calendarLookahead:J
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 92
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapLookaheadValue(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v6, "lockscreen_calendar_show_location"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    .line 97
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_show_location"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 99
    .local v4, calendarShowLocation:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapMetadataValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v6, "lockscreen_calendar_show_description"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    .line 105
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_show_description"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 107
    .local v3, calendarShowDescription:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapMetadataValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    return-void

    .end local v0           #calEntries:Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
    .end local v1           #calendarLookahead:J
    .end local v3           #calendarShowDescription:I
    .end local v4           #calendarShowLocation:I
    :cond_0
    move v6, v8

    .line 71
    goto/16 :goto_0

    .restart local v0       #calEntries:Lcom/android/settings/cyanogenmod/Calendar$CalendarEntries;
    :cond_1
    move v7, v8

    .line 84
    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 129
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 130
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 131
    .local v3, calendarShowLocation:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_show_location"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowLocationPref:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapMetadataValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    .end local v3           #calendarShowLocation:I
    :goto_0
    return v5

    .line 135
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 136
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 137
    .local v2, calendarShowDescription:I
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_show_description"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarShowDescriptionPref:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapMetadataValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 141
    .end local v2           #calendarShowDescription:I
    .restart local p2
    :cond_1
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 142
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 143
    .local v0, calendarLookahead:J
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendar_lookahead"

    invoke-static {v6, v7, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 145
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarLookaheadPref:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Calendar;->mapLookaheadValue(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    .end local v0           #calendarLookahead:J
    .restart local p2
    :cond_2
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarsPref:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v6, :cond_3

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, calendars:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "lockscreen_calendars"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 154
    .end local v4           #calendars:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 117
    .local v0, value:Z
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_calendar"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarRemindersOnlyPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 120
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mCalendarRemindersOnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 121
    .restart local v0       #value:Z
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/Calendar;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen_calendar_reminders_only"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0           #value:Z
    :cond_3
    move v2, v1

    .line 125
    goto :goto_0
.end method
