.class public Lcom/andrew/apollo/preferences/ThemePreview;
.super Landroid/preference/Preference;
.source "ThemePreview.java"


# instance fields
.field private themeDescription:Ljava/lang/CharSequence;

.field private themeName:Ljava/lang/CharSequence;

.field private themePackageName:Ljava/lang/CharSequence;

.field private themePreview:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f0e0061

    .line 47
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 48
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePackageName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePackageName:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 49
    const v4, 0x7f0e005e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, vThemeTitle:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v4, 0x7f0e005f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    .local v1, vThemeDescription:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v4, 0x7f0e0060

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 55
    .local v2, vThemePreview:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    .local v0, applyButton:Landroid/widget/Button;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 67
    .end local v1           #vThemeDescription:Landroid/widget/TextView;
    .end local v2           #vThemePreview:Landroid/widget/ImageView;
    .end local v3           #vThemeTitle:Landroid/widget/TextView;
    :goto_1
    return-void

    .line 58
    .end local v0           #applyButton:Landroid/widget/Button;
    .restart local v1       #vThemeDescription:Landroid/widget/TextView;
    .restart local v2       #vThemePreview:Landroid/widget/ImageView;
    .restart local v3       #vThemeTitle:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f020017

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 64
    .end local v1           #vThemeDescription:Landroid/widget/TextView;
    .end local v2           #vThemePreview:Landroid/widget/ImageView;
    .end local v3           #vThemeTitle:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .restart local v0       #applyButton:Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setTheme(Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 73
    iput-object p1, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePackageName:Ljava/lang/CharSequence;

    .line 74
    iput-object v6, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    .line 75
    iput-object v6, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeDescription:Ljava/lang/CharSequence;

    .line 76
    iget-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 78
    :cond_0
    iput-object v6, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    .line 79
    const-string v5, "Apollo"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 80
    const/4 v4, 0x0

    .line 82
    .local v4, themeResources:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/ThemePreview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 87
    :goto_0
    if-eqz v4, :cond_3

    .line 88
    const-string v5, "themeTitle"

    const-string v6, "string"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, themeNameId:I
    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    .line 93
    :cond_1
    const-string v5, "themeDescription"

    const-string v6, "string"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, themeDescriptionId:I
    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeDescription:Ljava/lang/CharSequence;

    .line 98
    :cond_2
    const-string v5, "themepreview"

    const-string v6, "drawable"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 100
    .local v3, themePreviewId:I
    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themePreview:Landroid/graphics/drawable/Drawable;

    .line 105
    .end local v1           #themeDescriptionId:I
    .end local v2           #themeNameId:I
    .end local v3           #themePreviewId:I
    .end local v4           #themeResources:Landroid/content/res/Resources;
    :cond_3
    iget-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    if-nez v5, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/ThemePreview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeName:Ljava/lang/CharSequence;

    .line 107
    :cond_4
    iget-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeDescription:Ljava/lang/CharSequence;

    if-nez v5, :cond_5

    .line 108
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/ThemePreview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/preferences/ThemePreview;->themeDescription:Ljava/lang/CharSequence;

    .line 109
    :cond_5
    invoke-virtual {p0}, Lcom/andrew/apollo/preferences/ThemePreview;->notifyChanged()V

    .line 110
    return-void

    .line 84
    .restart local v4       #themeResources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
