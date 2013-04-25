.class public Lcom/andrew/apollo/utils/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "default_theme"

    .prologue
    .line 38
    const-string v1, "apollopreferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "themePackageName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initThemeChooser(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 5
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"
    .parameter "themeType"

    .prologue
    .line 98
    const-string v4, "Apollo"

    invoke-static {p0, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 101
    .local v3, themeResources:Landroid/content/res/Resources;
    const-string v4, "Apollo"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 109
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 110
    invoke-static {v3, v2, p2, p1, p3}, Lcom/andrew/apollo/utils/ThemeUtils;->loadThemeResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V

    .line 111
    :cond_1
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Apollo"

    invoke-static {p0, v4}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadThemeResource(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;I)V
    .locals 6
    .parameter "themeResources"
    .parameter "themePackage"
    .parameter "item_name"
    .parameter "item"
    .parameter "themeType"

    .prologue
    const/4 v5, 0x0

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz p0, :cond_1

    .line 64
    const-string v4, "drawable"

    invoke-virtual {p0, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, resource_id:I
    if-eqz v2, :cond_1

    .line 67
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    instance-of v4, p3, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    move-object v4, p3

    .line 72
    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 73
    .local v3, tmp:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    const/4 v3, 0x0

    .line 77
    :cond_0
    check-cast p3, Landroid/widget/ImageView;

    .end local p3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    .end local v2           #resource_id:I
    .end local v3           #tmp:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local v2       #resource_id:I
    .restart local p3
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 79
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 80
    .restart local v3       #tmp:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 82
    const/4 v3, 0x0

    .line 84
    :cond_3
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static overflowLight(Landroid/content/Context;)Z
    .locals 8
    .parameter "mContext"

    .prologue
    .line 286
    const-string v6, "Apollo"

    invoke-static {p0, v6}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 288
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 289
    .local v5, themeResources:Landroid/content/res/Resources;
    const-string v6, "Apollo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 291
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 296
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 297
    const-string v6, "overflow.light"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 298
    .local v3, resourceID:I
    if-eqz v3, :cond_1

    .line 299
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 300
    .local v1, overflow:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    const/4 v6, 0x1

    .line 304
    .end local v1           #overflow:Ljava/lang/Boolean;
    .end local v3           #resourceID:I
    :goto_1
    return v6

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Apollo"

    invoke-static {p0, v6}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static setActionBarBackground(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 215
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 217
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 218
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 225
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 226
    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setActionBarItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 239
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 241
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 242
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 249
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 250
    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 251
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 255
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 143
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 145
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 146
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 153
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 154
    const-string v5, "color"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 159
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 167
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 169
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 170
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 178
    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 179
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setMarginDrawable(Landroid/content/Context;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 191
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 194
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 201
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 202
    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 203
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setProgessDrawable(Landroid/content/Context;Landroid/widget/SeekBar;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 263
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 265
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 266
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 268
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 273
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 274
    const-string v5, "drawable"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "view"
    .parameter "resourceName"

    .prologue
    .line 119
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->getThemePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, themePackage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 121
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 122
    .local v4, themeResources:Landroid/content/res/Resources;
    const-string v5, "Apollo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 129
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 130
    const-string v5, "color"

    invoke-virtual {v4, p2, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 131
    .local v2, resourceID:I
    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .end local v2           #resourceID:I
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Apollo"

    invoke-static {p0, v5}, Lcom/andrew/apollo/utils/ThemeUtils;->setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setThemePackageName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 47
    const-string v2, "apollopreferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "themePackageName"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method
