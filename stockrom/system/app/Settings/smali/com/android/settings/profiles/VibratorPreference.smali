.class public Lcom/android/settings/profiles/VibratorPreference;
.super Landroid/preference/Preference;
.source "VibratorPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private currentChoice:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mProtectFromCheckedChange:Z

.field private mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    .line 73
    invoke-direct {p0}, Lcom/android/settings/profiles/VibratorPreference;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    .line 65
    invoke-direct {p0}, Lcom/android/settings/profiles/VibratorPreference;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    .line 56
    invoke-direct {p0}, Lcom/android/settings/profiles/VibratorPreference;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/profiles/VibratorPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/profiles/VibratorPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/profiles/VibratorPreference;)Lcom/android/settings/profiles/ProfileConfig$VibratorItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f040064

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/VibratorPreference;->setLayoutResource(I)V

    .line 100
    return-void
.end method


# virtual methods
.method protected createVibratorDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 125
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/profiles/VibratorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/profiles/VibratorPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, VibratorValues:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    iget-object v2, v2, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    invoke-virtual {v2}, Landroid/app/VibratorSettings;->getValue()I

    move-result v2

    iput v2, p0, Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I

    .line 130
    iget-object v2, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    iget-object v2, v2, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    const v2, 0x7f07006e

    iget v3, p0, Lcom/android/settings/profiles/VibratorPreference;->currentChoice:I

    new-instance v4, Lcom/android/settings/profiles/VibratorPreference$1;

    invoke-direct {v4, p0}, Lcom/android/settings/profiles/VibratorPreference$1;-><init>(Lcom/android/settings/profiles/VibratorPreference;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/profiles/VibratorPreference$2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/profiles/VibratorPreference$2;-><init>(Lcom/android/settings/profiles/VibratorPreference;[Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/profiles/VibratorPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/profiles/VibratorPreference$3;-><init>(Lcom/android/settings/profiles/VibratorPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, view:Landroid/view/View;
    const v3, 0x1010001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, widget:Landroid/view/View;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 82
    check-cast v2, Landroid/widget/CheckBox;

    .end local v2           #widget:Landroid/view/View;
    iput-object v2, p0, Lcom/android/settings/profiles/VibratorPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 83
    iget-object v3, p0, Lcom/android/settings/profiles/VibratorPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    .line 86
    iget-object v3, p0, Lcom/android/settings/profiles/VibratorPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/profiles/VibratorPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    .line 90
    :cond_0
    const v3, 0x7f080112

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, textLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_1
    return-object v1
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    invoke-virtual {v0}, Landroid/app/VibratorSettings;->isOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    iget-object v0, v0, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    invoke-virtual {v0, p2}, Landroid/app/VibratorSettings;->setOverride(Z)V

    .line 121
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/profiles/VibratorPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 174
    if-eqz p1, :cond_0

    const v0, 0x7f080112

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/profiles/VibratorPreference;->createVibratorDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 177
    :cond_0
    return-void
.end method

.method public setVibratorItem(Lcom/android/settings/profiles/ProfileConfig$VibratorItem;)V
    .locals 2
    .parameter "vibratorItem"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    .line 109
    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/profiles/VibratorPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/profiles/VibratorPreference;->mVibratorItem:Lcom/android/settings/profiles/ProfileConfig$VibratorItem;

    iget-object v1, v1, Lcom/android/settings/profiles/ProfileConfig$VibratorItem;->mSettings:Landroid/app/VibratorSettings;

    invoke-virtual {v1}, Landroid/app/VibratorSettings;->isOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    :cond_0
    return-void
.end method
