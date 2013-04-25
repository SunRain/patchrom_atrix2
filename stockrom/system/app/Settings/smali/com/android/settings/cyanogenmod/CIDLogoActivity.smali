.class public Lcom/android/settings/cyanogenmod/CIDLogoActivity;
.super Landroid/app/Activity;
.source "CIDLogoActivity.java"


# instance fields
.field mContent:Landroid/widget/ImageView;

.field final mHandler:Landroid/os/Handler;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private makeView()Landroid/view/View;
    .locals 13

    .prologue
    .line 45
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v8, view:Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    const/high16 v9, 0x4100

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 56
    .local v5, p:I
    invoke-virtual {v8, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    const-string v9, "sans-serif-light"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 59
    .local v1, light:Landroid/graphics/Typeface;
    const-string v9, "sans-serif"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 61
    .local v4, normal:Landroid/graphics/Typeface;
    const-string v9, "ro.cm.version"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, cmversion:Ljava/lang/String;
    const/high16 v9, 0x4160

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v9, v10

    .line 64
    .local v6, size:F
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x1

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 68
    const/high16 v9, -0x3f80

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 70
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v7, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    :cond_0
    const/high16 v9, 0x3fa0

    mul-float/2addr v9, v6

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    const/high16 v9, 0x4080

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x6600

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 75
    const-string v9, "CyanogenMod"

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v8, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v7, Landroid/widget/TextView;

    .end local v7           #tv:Landroid/widget/TextView;
    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 79
    .restart local v7       #tv:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    :cond_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    const/high16 v9, 0x4080

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    const/4 v10, 0x0

    const/high16 v11, 0x4000

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x6600

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 83
    const-string v9, "(.+?)-.*"

    const-string v10, "$1"

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v8, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-object v8
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mToast:Landroid/widget/Toast;

    .line 94
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mToast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->makeView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 96
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    .line 100
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    const/high16 v2, 0x4200

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 104
    .local v1, p:I
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/CIDLogoActivity$1;-><init>(Lcom/android/settings/cyanogenmod/CIDLogoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/CIDLogoActivity$2;-><init>(Lcom/android/settings/cyanogenmod/CIDLogoActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->mContent:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/CIDLogoActivity;->setContentView(Landroid/view/View;)V

    .line 133
    return-void
.end method
