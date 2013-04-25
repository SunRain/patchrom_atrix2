.class Lcom/android/settings/cyanogenmod/CIDCircus$Board;
.super Landroid/widget/FrameLayout;
.source "CIDCircus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cyanogenmod/CIDCircus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Board"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    }
.end annotation


# static fields
.field static CIDS:[I

.field static COLORS:[I

.field static LUCKY:F

.field static MAX_RADIUS:I

.field static MAX_SCALE:F

.field static MIN_SCALE:F

.field static NUM_CIDS:I

.field static sRNG:Ljava/util/Random;


# instance fields
.field private boardHeight:I

.field private boardWidth:I

.field mAnim:Landroid/animation/TimeAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->sRNG:Ljava/util/Random;

    .line 75
    const/16 v0, 0x28

    sput v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->NUM_CIDS:I

    .line 76
    const v0, 0x3e4ccccd

    sput v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MIN_SCALE:F

    .line 77
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_SCALE:F

    .line 79
    const v0, 0x3a83126f

    sput v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->LUCKY:F

    .line 81
    const/high16 v0, 0x4410

    sget v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_RADIUS:I

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->CIDS:[I

    .line 93
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->COLORS:[I

    return-void

    .line 83
    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
    .end array-data

    .line 93
    :array_1
    .array-data 0x4
        0xcct 0x99t 0x0t 0xfft
        0xe5t 0xb5t 0x33t 0xfft
        0x0t 0x99t 0x66t 0xfft
        0x0t 0xcct 0x99t 0xfft
        0x0t 0x0t 0xcct 0xfft
        0x0t 0x88t 0xfft 0xfft
        0x33t 0xbbt 0xfft 0xfft
        0xcct 0x33t 0x99t 0xfft
        0xcct 0x66t 0xaat 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "as"

    .prologue
    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->setSystemUiVisibility(I)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->setWillNotDraw(Z)V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->reset()V

    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .parameter "x"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 67
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static flip()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method static lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "f"

    .prologue
    .line 47
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static mag(FF)F
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 63
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static pickInt([I)I
    .locals 2
    .parameter "array"

    .prologue
    .line 71
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget v0, p0, v0

    goto :goto_0
.end method

.method static randfrange(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static randsign()I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->removeAllViews()V

    .line 240
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 244
    .local v2, wrap:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v3, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->NUM_CIDS:I

    if-ge v0, v3, :cond_0

    .line 245
    new-instance v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;

    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;-><init>(Lcom/android/settings/cyanogenmod/CIDCircus$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    .local v1, nv:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    int-to-float v3, v0

    sget v4, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->NUM_CIDS:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->z:F

    .line 248
    iget v3, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->z:F

    iget v4, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->z:F

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->z:F

    .line 249
    invoke-virtual {v1}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->reset()V

    .line 250
    iget v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardWidth:I

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->randfrange(FF)F

    move-result v3

    iput v3, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->x:F

    .line 251
    iget v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardHeight:I

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->randfrange(FF)F

    move-result v3

    iput v3, v1, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->y:F

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v1           #nv:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v3, :cond_1

    .line 255
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v3}, Landroid/animation/TimeAnimator;->cancel()V

    .line 257
    :cond_1
    new-instance v3, Landroid/animation/TimeAnimator;

    invoke-direct {v3}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    .line 258
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v4, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;

    invoke-direct {v4, p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;-><init>(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V

    invoke-virtual {v3, v4}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 295
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->stopAnimation()V

    .line 324
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 353
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 300
    iput p1, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardWidth:I

    .line 301
    iput p2, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardHeight:I

    .line 302
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->stopAnimation()V

    .line 306
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;

    invoke-direct {v0, p0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$2;-><init>(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->post(Ljava/lang/Runnable;)Z

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 318
    :cond_0
    return-void
.end method
