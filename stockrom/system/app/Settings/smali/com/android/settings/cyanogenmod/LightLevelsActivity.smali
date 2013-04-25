.class public Lcom/android/settings/cyanogenmod/LightLevelsActivity;
.super Landroid/app/Activity;
.source "LightLevelsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnValues:[I

.field private mButtons:Landroid/widget/TextView;

.field private mDefaults:Landroid/widget/Button;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditedId:I

.field private mEditor:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHasChanges:Z

.field private mHasKeyboard:Z

.field private mKbValues:[I

.field private mKeyboard:Landroid/widget/TextView;

.field private mLcdValues:[I

.field private mLevels:[I

.field private mNumLevels:Landroid/widget/Button;

.field private mReload:Landroid/widget/Button;

.field private mSave:Landroid/widget/Button;

.field private mScreen:Landroid/widget/TextView;

.field private mSensor:Landroid/widget/TextView;

.field private mSensorRange:I

.field private mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 353
    new-instance v0, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity$3;-><init>(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->dialogOk()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createButton(ILjava/lang/String;)Landroid/widget/Button;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    .line 490
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 491
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setId(I)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    const/16 v1, 0x32

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 494
    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 495
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    return-object v0
.end method

.method private createEditor()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 399
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 402
    .local v2, table:Landroid/widget/TableLayout;
    :goto_0
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 403
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 412
    .local v1, row:Landroid/widget/TableRow;
    const-string v3, "0"

    invoke-direct {p0, v6, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 415
    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v6

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 418
    const/16 v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 421
    const/16 v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 424
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_1

    .line 425
    const/16 v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 428
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 430
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 431
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 434
    add-int/lit16 v3, v0, 0x7d0

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 437
    add-int/lit16 v3, v0, 0x3e8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 441
    add-int/lit16 v3, v0, 0xbb8

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 444
    add-int/lit16 v3, v0, 0xfa0

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 447
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_2

    .line 448
    add-int/lit16 v3, v0, 0x1388

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 451
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 454
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createRow()Landroid/widget/TableRow;

    move-result-object v1

    .line 457
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x7d0

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 461
    const v3, 0x7fffffff

    const/16 v4, 0x221e

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createTextView(ILjava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 464
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xbb8

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 467
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0xfa0

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 470
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_4

    .line 471
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v3, v3

    add-int/lit16 v3, v3, 0x1388

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createButton(ILjava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 475
    :cond_4
    invoke-virtual {v2}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;I)V

    .line 477
    invoke-virtual {v2, v6, v7}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 478
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v7}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 479
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v7}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 480
    iget-boolean v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    if-eqz v3, :cond_5

    .line 481
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v7}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 483
    :cond_5
    return-void
.end method

.method private createRow()Landroid/widget/TableRow;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, row:Landroid/widget/TableRow;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setGravity(I)V

    .line 511
    return-object v0
.end method

.method private createTextView(ILjava/lang/String;)Landroid/widget/TextView;
    .locals 2
    .parameter "id"
    .parameter "text"

    .prologue
    .line 500
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, tv:Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 502
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->dp2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setId(I)V

    .line 505
    return-object v0
.end method

.method private dialogOk()V
    .locals 10

    .prologue
    const/16 v8, 0x1388

    const/16 v7, 0xfa0

    const/16 v6, 0xbb8

    const/4 v9, 0x1

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, changed:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 197
    .local v3, value:I
    const/16 v2, 0xff

    .line 198
    .local v2, valLimitHi:I
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    const/16 v5, -0x539

    if-ne v4, v5, :cond_2

    .line 199
    if-le v3, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_0

    .line 200
    add-int/lit8 v4, v3, -0x1

    new-array v1, v4, [I

    .line 201
    .local v1, tmp:[I
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    .line 204
    new-array v1, v3, [I

    .line 205
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    .line 208
    new-array v1, v3, [I

    .line 209
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    .line 212
    new-array v1, v3, [I

    .line 213
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    iget-object v8, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    .line 216
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createEditor()V

    .line 217
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 218
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->updateButtons()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v1           #tmp:[I
    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 255
    iput-boolean v9, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 256
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    :cond_1
    return-void

    .line 220
    .restart local v2       #valLimitHi:I
    .restart local v3       #value:I
    :cond_2
    :try_start_1
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-ge v4, v6, :cond_3

    .line 221
    if-ltz v3, :cond_0

    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensorRange:I

    if-gt v3, v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    iget v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    add-int/lit16 v5, v5, -0x7d0

    aput v3, v4, v5

    .line 223
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    add-int/lit16 v4, v4, -0x3e8

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    add-int/lit8 v5, v3, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const/4 v0, 0x1

    goto :goto_0

    .line 227
    :cond_3
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-lt v4, v6, :cond_4

    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-ge v4, v7, :cond_4

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_0

    if-gt v3, v2, :cond_0

    .line 232
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    iget v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    add-int/lit16 v5, v5, -0xbb8

    aput v3, v4, v5

    .line 233
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_4
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-lt v4, v7, :cond_5

    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-ge v4, v8, :cond_5

    .line 237
    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    .line 239
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    iget v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    add-int/lit16 v5, v5, -0xfa0

    aput v3, v4, v5

    .line 240
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 243
    :cond_5
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    if-lt v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    const/16 v5, 0x1770

    if-ge v4, v5, :cond_0

    .line 244
    if-ltz v3, :cond_0

    if-gt v3, v2, :cond_0

    .line 246
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    iget v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    add-int/lit16 v5, v5, -0x1388

    aput v3, v4, v5

    .line 247
    iget v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 251
    .end local v2           #valLimitHi:I
    .end local v3           #value:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private dp2px(I)I
    .locals 1
    .parameter "dp"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private intArrayToString([I)Ljava/lang/String;
    .locals 3
    .parameter "array"

    .prologue
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 346
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadData(Z)V
    .locals 5
    .parameter "defaults"

    .prologue
    .line 261
    if-nez p1, :cond_1

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 264
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "light_sensor_levels"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    .line 267
    const-string v3, "light_sensor_lcd_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    .line 270
    const-string v3, "light_sensor_button_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    .line 273
    const-string v3, "light_sensor_keyboard_values"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->parseIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    .line 277
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v0, v3

    .line 278
    .local v0, N:I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    array-length v3, v3

    add-int/lit8 v4, v0, 0x1

    if-eq v3, v4, :cond_1

    .line 280
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "sanity check failed"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0           #N:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Ljava/lang/Exception;
    const/4 p1, 0x1

    .line 288
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->createEditor()V

    .line 299
    return-void
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .locals 4
    .parameter "intArray"

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 304
    :cond_0
    const/4 v3, 0x0

    new-array v1, v3, [I

    .line 312
    .local v1, result:[I
    :cond_1
    return-object v1

    .line 306
    .end local v1           #result:[I
    :cond_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 308
    .restart local v1       #result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 309
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private save()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 317
    const/4 v0, 0x1

    .line 318
    .local v0, doSave:Z
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 319
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    add-int/lit8 v6, v1, -0x1

    aget v5, v5, v6

    if-gt v4, v5, :cond_2

    .line 320
    const v4, 0x7f0b06cb

    invoke-virtual {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 321
    const/4 v0, 0x0

    .line 325
    :cond_0
    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_levels"

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    invoke-direct {p0, v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_lcd_values"

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_button_values"

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_sensor_keyboard_values"

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    invoke-direct {p0, v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    .line 336
    .local v2, tag:J
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lights_changed"

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 338
    iput-boolean v8, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 339
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 341
    .end local v2           #tag:J
    :cond_1
    return-void

    .line 318
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private updateButtons()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/16 v9, 0x1388

    const/16 v8, 0xfa0

    const/16 v7, 0xbb8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 136
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    if-ne p1, v4, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->save()V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    if-ne p1, v4, :cond_2

    .line 139
    invoke-direct {p0, v6}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->loadData(Z)V

    .line 140
    iput-boolean v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 141
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mReload:Landroid/widget/Button;

    if-ne p1, v4, :cond_3

    .line 143
    invoke-direct {p0, v5}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->loadData(Z)V

    .line 144
    iput-boolean v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 145
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->updateButtons()V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    if-ne p1, v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensorRange:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 150
    const/16 v4, -0x539

    iput v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    .line 151
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 154
    .local v0, id:I
    const/4 v3, -0x1

    .line 155
    .local v3, value:I
    const/4 v2, 0x0

    .line 156
    .local v2, min:I
    const/4 v1, 0x0

    .line 157
    .local v1, max:I
    const/16 v4, 0x7d0

    if-lt v0, v4, :cond_5

    if-ge v0, v7, :cond_5

    .line 158
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLevels:[I

    add-int/lit16 v5, v0, -0x7d0

    aget v3, v4, v5

    .line 159
    const/4 v2, 0x0

    .line 160
    iget v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensorRange:I

    .line 179
    :goto_1
    if-ltz v3, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->selectAll()V

    .line 183
    iput v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditedId:I

    .line 184
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 161
    :cond_5
    if-lt v0, v7, :cond_6

    if-ge v0, v8, :cond_6

    .line 162
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mLcdValues:[I

    add-int/lit16 v5, v0, -0xbb8

    aget v3, v4, v5

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "light_screen_dim"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 166
    const/16 v1, 0xff

    goto :goto_1

    .line 167
    :cond_6
    if-lt v0, v8, :cond_7

    if-ge v0, v9, :cond_7

    .line 168
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mBtnValues:[I

    add-int/lit16 v5, v0, -0xfa0

    aget v3, v4, v5

    .line 169
    const/4 v2, 0x0

    .line 170
    const/16 v1, 0xff

    goto :goto_1

    .line 171
    :cond_7
    if-lt v0, v9, :cond_8

    const/16 v4, 0x1770

    if-ge v0, v4, :cond_8

    .line 172
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKbValues:[I

    add-int/lit16 v5, v0, -0x1388

    aget v3, v4, v5

    .line 173
    const/4 v2, 0x0

    .line 174
    const/16 v1, 0xff

    goto :goto_1

    .line 176
    :cond_8
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f0b06bd

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->setTitle(I)V

    .line 67
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->setContentView(I)V

    .line 69
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensorRange:I

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    .line 72
    const v1, 0x7f0800b1

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSave:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0800b0

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    .line 75
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDefaults:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mReload:Landroid/widget/Button;

    .line 77
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mReload:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const v1, 0x7f0800a3

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mSensor:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0800a6

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mScreen:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mButtons:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0800ac

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mKeyboard:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0800ba

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mNumLevels:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v1, v3, :cond_0

    .line 86
    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    const v2, 0x7f0800aa

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 88
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v2, 0x7f0800b8

    invoke-virtual {p0, v2}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    .line 90
    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    .line 95
    :goto_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    .line 96
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/cyanogenmod/LightLevelsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity$2;-><init>(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/cyanogenmod/LightLevelsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity$1;-><init>(Lcom/android/settings/cyanogenmod/LightLevelsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    .line 112
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 117
    invoke-direct {p0, v4}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->loadData(Z)V

    .line 118
    iput-boolean v4, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasChanges:Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->updateButtons()V

    .line 120
    return-void

    .line 92
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHasKeyboard:Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LightLevelsActivity;->mUpdateTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 126
    return-void
.end method
