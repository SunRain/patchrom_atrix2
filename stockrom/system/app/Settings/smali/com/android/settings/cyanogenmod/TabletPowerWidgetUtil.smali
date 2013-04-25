.class public Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;
.super Ljava/lang/Object;
.source "TabletPowerWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;
    }
.end annotation


# static fields
.field public static final BUTTONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static final BUTTONS_DEFAULT:Ljava/lang/String;

.field protected static final KEY_TOGGLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pref_airplane_toggle"

    aput-object v1, v0, v6

    const-string v1, "pref_rotate_toggle"

    aput-object v1, v0, v7

    const-string v1, "pref_bluetooth_toggle"

    aput-object v1, v0, v8

    const-string v1, "pref_gps_toggle"

    aput-object v1, v0, v10

    const-string v1, "pref_wifi_toggle"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "pref_flashlight_toggle"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pref_mobile_data_toggle"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pref_network_mode_toggle"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pref_sound_toggle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    .line 36
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v6

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v3, v3, v6

    const v4, 0x7f0b0729

    const-string v5, "com.android.systemui:drawable/stat_airplane_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v7

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v3, v3, v7

    const v4, 0x7f0b0728

    const-string v5, "com.android.systemui:drawable/stat_orientation_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v8

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v3, v3, v8

    const v4, 0x7f0b071e

    const-string v5, "com.android.systemui:drawable/stat_bluetooth_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v3, v3, v10

    const v4, 0x7f0b071f

    const-string v5, "com.android.systemui:drawable/stat_gps_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v9

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v3, v3, v9

    const v4, 0x7f0b071d

    const-string v5, "com.android.systemui:drawable/stat_wifi_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    const v4, 0x7f0b072a

    const-string v5, "com.android.systemui:drawable/stat_flashlight_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    const v4, 0x7f0b0725

    const-string v5, "com.android.systemui:drawable/stat_data_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    const v4, 0x7f0b0727

    const-string v5, "com.android.systemui:drawable/stat_2g3g_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-instance v2, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;

    sget-object v3, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    const v4, 0x7f0b0720

    const-string v5, "com.android.systemui:drawable/stat_ring_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->KEY_TOGGLES:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public static getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "buttons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const-string v3, "\\|"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, buttonArray:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, mButtonContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 111
    aget-object v3, v0, v1

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v2
.end method

.method public static getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 118
    :cond_0
    const-string v1, ""

    .line 124
    :cond_1
    return-object v1

    .line 120
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_widget_buttons_tablet"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, buttons:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/settings/cyanogenmod/TabletPowerWidgetUtil;->BUTTONS_DEFAULT:Ljava/lang/String;

    .line 75
    :cond_0
    return-object v0
.end method

.method public static saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "buttons"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons_tablet"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    return-void
.end method
