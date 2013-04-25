.class public Lcom/androidquery/util/RatioDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RatioDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private adjusted:Z

.field private anchor:F

.field private file:Ljava/io/File;

.field private loading:Z

.field private m:Landroid/graphics/Matrix;

.field private ratio:F

.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private reuse:Landroid/graphics/BitmapFactory$Options;

.field private version:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "res"
    .parameter "bm"
    .parameter "iv"
    .parameter "ratio"
    .parameter "anchor"
    .parameter "file"
    .parameter "reuse"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 58
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    .line 59
    iput p4, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 60
    iput p5, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    .line 62
    if-eqz p7, :cond_0

    .line 64
    invoke-static {p2}, Lcom/androidquery/util/RatioDrawable;->getGen(Landroid/graphics/Bitmap;)I

    move-result v1

    iput v1, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    .line 65
    const-string v1, "reuse init version"

    iget v2, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iput-object p7, p0, Lcom/androidquery/util/RatioDrawable;->reuse:Landroid/graphics/BitmapFactory$Options;

    .line 67
    iput-object p6, p0, Lcom/androidquery/util/RatioDrawable;->file:Ljava/io/File;

    .line 70
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 75
    const/4 v1, 0x0

    invoke-direct {p0, p3, p2, v1}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 77
    return-void
.end method

.method private adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "iv"
    .parameter "bm"
    .parameter "done"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    move-result v5

    .line 190
    .local v5, vw:I
    if-gtz v5, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 193
    .local v1, dw:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 196
    .local v0, dh:I
    invoke-direct {p0, v1, v0, v5}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    add-int v3, v6, v7

    .line 198
    .local v3, th:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 199
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    .line 201
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    .local v4, vh:I
    if-eq v3, v4, :cond_2

    .line 206
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_2
    if-eqz p3, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    goto :goto_0
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "canvas"
    .parameter "iv"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-direct {p0, p2, p3}, Lcom/androidquery/util/RatioDrawable;->getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 171
    .local v1, m:Landroid/graphics/Matrix;
    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 173
    .local v2, vpad:I
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 174
    .local v0, hpad:I
    if-gtz v2, :cond_0

    if-lez v0, :cond_1

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/androidquery/util/RatioDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, p3, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 180
    .end local v0           #hpad:I
    .end local v2           #vpad:I
    :cond_2
    iget-boolean v3, p0, Lcom/androidquery/util/RatioDrawable;->adjusted:Z

    if-nez v3, :cond_3

    .line 181
    const/4 v3, 0x1

    invoke-direct {p0, p2, p3, v3}, Lcom/androidquery/util/RatioDrawable;->adjust(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 184
    :cond_3
    return-void
.end method

.method private static getGen(Landroid/graphics/Bitmap;)I
    .locals 7
    .parameter "bm"

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v1, "getGenerationId"

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 81
    .local v6, result:Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 82
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private getMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 231
    iget-object v1, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    if-ne v3, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 270
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 236
    invoke-direct {p0, p1}, Lcom/androidquery/util/RatioDrawable;->getWidth(Landroid/widget/ImageView;)I

    move-result v4

    .line 237
    invoke-direct {p0, v3, v1, v4}, Lcom/androidquery/util/RatioDrawable;->targetHeight(III)I

    move-result v5

    .line 239
    if-lez v3, :cond_1

    if-lez v1, :cond_1

    if-lez v4, :cond_1

    if-gtz v5, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    if-eq v3, v2, :cond_4

    .line 246
    :cond_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    .line 248
    mul-int v2, v3, v5

    mul-int v6, v4, v1

    if-lt v2, v6, :cond_5

    .line 250
    int-to-float v2, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 251
    int-to-float v1, v4

    int-to-float v4, v3

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v1, v4

    .line 262
    :goto_1
    iget-object v4, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 263
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 267
    iput v3, p0, Lcom/androidquery/util/RatioDrawable;->w:I

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/androidquery/util/RatioDrawable;->m:Landroid/graphics/Matrix;

    goto :goto_0

    .line 254
    :cond_5
    int-to-float v2, v4

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 255
    invoke-direct {p0, v3, v1}, Lcom/androidquery/util/RatioDrawable;->getYOffset(II)F

    move-result v4

    .line 258
    int-to-float v5, v5

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    mul-float/2addr v1, v4

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1
.end method

.method private getWidth(Landroid/widget/ImageView;)I
    .locals 4
    .parameter "iv"

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 90
    .local v1, width:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 91
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    :cond_0
    if-gtz v1, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 97
    :cond_1
    if-lez v1, :cond_2

    .line 98
    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 101
    :cond_2
    return v1
.end method

.method private getYOffset(II)F
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/high16 v3, 0x3fc0

    const/high16 v2, 0x3f80

    .line 276
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    const v1, 0x7f7fffff

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->anchor:F

    sub-float v0, v2, v0

    div-float/2addr v0, v4

    .line 285
    :goto_0
    return v0

    .line 280
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 282
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 283
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 285
    const/high16 v1, 0x3e80

    sub-float v0, v3, v0

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private targetHeight(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget v0, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    .line 220
    iget v1, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    const v2, 0x7f7fffff

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 221
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 224
    :cond_0
    int-to-float v1, p3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 106
    iget-object v3, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 108
    .local v2, iv:Landroid/widget/ImageView;
    iget v3, p0, Lcom/androidquery/util/RatioDrawable;->ratio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/androidquery/util/RatioDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/androidquery/util/RatioDrawable;->file:Ljava/io/File;

    if-eqz v3, :cond_4

    .line 117
    invoke-static {v0}, Lcom/androidquery/util/RatioDrawable;->getGen(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 118
    .local v1, gen:I
    iget v3, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    if-eq v1, v3, :cond_3

    .line 120
    const-string v3, "reload"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    const-string v3, "reload"

    iget-object v4, p0, Lcom/androidquery/util/RatioDrawable;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    iget-boolean v3, p0, Lcom/androidquery/util/RatioDrawable;->loading:Z

    if-nez v3, :cond_1

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/androidquery/util/RatioDrawable;->loading:Z

    .line 124
    invoke-static {p0}, Lcom/androidquery/callback/AjaxCallback;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-direct {p0, p1, v2, v0}, Lcom/androidquery/util/RatioDrawable;->draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    .end local v1           #gen:I
    :cond_4
    invoke-direct {p0, p1, v2, v0}, Lcom/androidquery/util/RatioDrawable;->draw(Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 147
    :try_start_0
    const-string v2, "reloading shared"

    iget v3, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/androidquery/util/RatioDrawable;->reuse:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/androidquery/util/RatioDrawable;->getGen(Landroid/graphics/Bitmap;)I

    move-result v2

    iput v2, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    .line 152
    const-string v2, "reloading done"

    iget v3, p0, Lcom/androidquery/util/RatioDrawable;->version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object v2, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->postInvalidate()V

    .line 156
    const-string v2, "redrawing"

    iget-object v3, p0, Lcom/androidquery/util/RatioDrawable;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    iput-boolean v7, p0, Lcom/androidquery/util/RatioDrawable;->loading:Z

    .line 164
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, e:Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
