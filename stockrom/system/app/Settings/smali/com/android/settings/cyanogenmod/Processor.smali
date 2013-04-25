.class public Lcom/android/settings/cyanogenmod/Processor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Processor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;
    }
.end annotation


# static fields
.field private static FREQ_CUR_FILE:Ljava/lang/String;


# instance fields
.field private mCurCPUHandler:Landroid/os/Handler;

.field private mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

.field private mCurFrequencyPref:Landroid/preference/Preference;

.field private mGovernorFormat:Ljava/lang/String;

.field private mGovernorPref:Landroid/preference/ListPreference;

.field private mMaxFrequencyFormat:Ljava/lang/String;

.field private mMaxFrequencyPref:Landroid/preference/ListPreference;

.field private mMinFrequencyFormat:Ljava/lang/String;

.field private mMinFrequencyPref:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    sput-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;-><init>(Lcom/android/settings/cyanogenmod/Processor;Lcom/android/settings/cyanogenmod/Processor$1;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    .line 84
    new-instance v0, Lcom/android/settings/cyanogenmod/Processor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/Processor$1;-><init>(Lcom/android/settings/cyanogenmod/Processor;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/Processor;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/Processor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/Processor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private toMHz(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "mhzString"

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v8, 0x7f0b081e

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    .line 95
    const v8, 0x7f0b0820

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    .line 96
    const v8, 0x7f0b0822

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    .line 98
    new-array v0, v12, [Ljava/lang/String;

    .line 99
    .local v0, availableFrequencies:[Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    .line 105
    .local v2, availableGovernors:[Ljava/lang/String;
    const v8, 0x7f05002c

    invoke-virtual {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/Processor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 109
    .local v6, prefScreen:Landroid/preference/PreferenceScreen;
    const-string v8, "pref_cpu_gov"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    .line 110
    const-string v8, "pref_cpu_freq_cur"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    .line 111
    const-string v8, "pref_cpu_freq_min"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    .line 112
    const-string v8, "pref_cpu_freq_max"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    .line 116
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, temp:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, availableGovernorsLine:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 117
    .end local v3           #availableGovernorsLine:Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    :goto_0
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, availableFrequenciesLine:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 131
    .end local v1           #availableFrequenciesLine:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 132
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 168
    :goto_1
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 169
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq"

    sput-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    .line 172
    :cond_2
    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings/cyanogenmod/Processor;->FREQ_CUR_FILE:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_b

    .line 173
    .end local v7           #temp:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-virtual {v8, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 180
    :goto_2
    return-void

    .line 120
    .restart local v3       #availableGovernorsLine:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    :cond_4
    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 123
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 124
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v7, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 135
    .end local v3           #availableGovernorsLine:Ljava/lang/String;
    .end local v7           #temp:Ljava/lang/String;
    .restart local v1       #availableFrequenciesLine:Ljava/lang/String;
    :cond_5
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    array-length v8, v0

    new-array v4, v8, [Ljava/lang/String;

    .line 138
    .local v4, frequencies:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v8, v4

    if-ge v5, v8, :cond_6

    .line 139
    aget-object v8, v0, v5

    invoke-direct {p0, v8}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 143
    :cond_6
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_9

    .line 144
    .end local v7           #temp:Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 155
    :goto_4
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v8}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #temp:Ljava/lang/String;
    if-nez v7, :cond_a

    .line 156
    .end local v7           #temp:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v12}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 147
    .restart local v7       #temp:Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 148
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 149
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 150
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 159
    :cond_a
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 160
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 161
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v10, v13, [Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 176
    .end local v1           #availableFrequenciesLine:Ljava/lang/String;
    .end local v4           #frequencies:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_b
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurFrequencyPref:Landroid/preference/Preference;

    invoke-direct {p0, v7}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v8, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v8}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->start()V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->interrupt()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/Processor;->mCurCPUThread:Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;

    invoke-virtual {v0}, Lcom/android/settings/cyanogenmod/Processor$CurCPUThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    const-string v0, ""

    .line 216
    .local v0, fname:Ljava/lang/String;
    if-eqz p2, :cond_7

    .line 217
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_2

    .line 218
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    :cond_0
    :goto_0
    move-object v1, p2

    .line 225
    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->fileWriteOneLine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 226
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .end local p2
    aput-object p2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move v1, v2

    .line 240
    :goto_2
    return v1

    .line 219
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_3

    .line 220
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    goto :goto_0

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 222
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    goto :goto_0

    .line 228
    :cond_4
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 229
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 231
    .restart local p2
    :cond_5
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .restart local p2
    :cond_6
    move v1, v3

    .line 237
    goto :goto_2

    :cond_7
    move v1, v3

    .line 240
    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 188
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, temp:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mMinFrequencyFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #temp:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mMaxFrequencyFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/Processor;->toMHz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    .end local v0           #temp:Ljava/lang/String;
    :cond_1
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v1}, Lcom/android/settings/Utils;->fileReadOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #temp:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/Processor;->mGovernorFormat:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    .end local v0           #temp:Ljava/lang/String;
    :cond_2
    return-void
.end method
