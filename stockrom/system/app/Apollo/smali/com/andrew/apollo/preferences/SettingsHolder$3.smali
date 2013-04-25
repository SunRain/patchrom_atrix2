.class Lcom/andrew/apollo/preferences/SettingsHolder$3;
.super Ljava/lang/Object;
.source "SettingsHolder.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/preferences/SettingsHolder;->initThemeChooser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/preferences/SettingsHolder;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/preferences/SettingsHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/andrew/apollo/preferences/SettingsHolder$3;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 198
    iget-object v1, p0, Lcom/andrew/apollo/preferences/SettingsHolder$3;->this$0:Lcom/andrew/apollo/preferences/SettingsHolder;

    const-string v2, "themepreview"

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/preferences/SettingsHolder;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/andrew/apollo/preferences/ThemePreview;

    .line 199
    .local v0, themePreview:Lcom/andrew/apollo/preferences/ThemePreview;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/preferences/ThemePreview;->setTheme(Ljava/lang/CharSequence;)V

    .line 200
    const/4 v1, 0x0

    return v1
.end method
