.class final Lcom/android/providers/contacts/PhotoProcessor;
.super Ljava/lang/Object;
.source "PhotoProcessor.java"


# static fields
.field private static sMaxDisplayPhotoDim:I

.field private static sMaxThumbnailDim:I


# instance fields
.field private mDisplayPhoto:Landroid/graphics/Bitmap;

.field private final mForceCropToSquare:Z

.field private final mMaxDisplayPhotoDim:I

.field private final mMaxThumbnailPhotoDim:I

.field private final mOriginal:Landroid/graphics/Bitmap;

.field private mThumbnailPhoto:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/android/providers/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v1

    const-wide/32 v3, 0x28000000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 53
    .local v0, isExpensiveDevice:Z
    :goto_0
    const-string v1, "contacts.thumbnail_size"

    const/16 v2, 0x60

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    .line 56
    const-string v2, "contacts.display_photo_size"

    if-eqz v0, :cond_1

    const/16 v1, 0x2d0

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    .line 61
    return-void

    .line 50
    .end local v0           #isExpensiveDevice:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    .restart local v0       #isExpensiveDevice:Z
    :cond_1
    const/16 v1, 0x1e0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "original"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIZ)V
    .locals 0
    .parameter "original"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .parameter "forceCropToSquare"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 141
    iput p2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    .line 142
    iput p3, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    .line 143
    iput-boolean p4, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    .line 144
    invoke-direct {p0}, Lcom/android/providers/contacts/PhotoProcessor;->process()V

    .line 145
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2
    .parameter "originalBytes"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    array-length v0, p1

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 125
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .parameter "originalBytes"
    .parameter "maxDisplayPhotoDim"
    .parameter "maxThumbnailPhotoDim"
    .parameter "forceCropToSquare"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;IIZ)V

    .line 162
    return-void
.end method

.method private getCompressedBytes(Landroid/graphics/Bitmap;I)[B
    .locals 5
    .parameter "b"
    .parameter "quality"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    .line 217
    .local v1, compressed:Z
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 221
    .local v2, result:[B
    if-nez v1, :cond_0

    .line 222
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to compress image"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    :cond_0
    return-object v2
.end method

.method public static getMaxDisplayPhotoSize()I
    .locals 1

    .prologue
    .line 288
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxDisplayPhotoDim:I

    return v0
.end method

.method public static getMaxThumbnailSize()I
    .locals 1

    .prologue
    .line 280
    sget v0, Lcom/android/providers/contacts/PhotoProcessor;->sMaxThumbnailDim:I

    return v0
.end method

.method private getScaledBitmap(I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "maxDim"

    .prologue
    const/high16 v9, 0x3f80

    .line 185
    iget-object v8, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    .line 186
    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 187
    .local v3, width:I
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 188
    .local v4, height:I
    const/4 v1, 0x0

    .line 189
    .local v1, cropLeft:I
    const/4 v2, 0x0

    .line 190
    .local v2, cropTop:I
    iget-boolean v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mForceCropToSquare:Z

    if-eqz v0, :cond_0

    if-eq v3, v4, :cond_0

    .line 192
    if-le v4, v3, :cond_4

    .line 193
    sub-int v0, v4, v3

    div-int/lit8 v2, v0, 0x2

    .line 194
    move v4, v3

    .line 200
    :cond_0
    :goto_0
    int-to-float v0, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float v7, v0, v6

    .line 201
    .local v7, scaleFactor:F
    cmpg-float v0, v7, v9

    if-ltz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_3

    .line 203
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    .local v5, matrix:Landroid/graphics/Matrix;
    cmpg-float v0, v7, v9

    if-gez v0, :cond_2

    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 208
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_3
    return-object v8

    .line 196
    .end local v7           #scaleFactor:F
    :cond_4
    sub-int v0, v3, v4

    div-int/lit8 v1, v0, 0x2

    .line 197
    move v3, v4

    goto :goto_0
.end method

.method private process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid image file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxDisplayPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    .line 173
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoProcessor;->getScaledBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    .line 174
    return-void
.end method


# virtual methods
.method public getDisplayPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayPhotoBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxThumbnailPhotoDim()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/providers/contacts/PhotoProcessor;->mMaxThumbnailPhotoDim:I

    return v0
.end method

.method public getThumbnailPhotoBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoProcessor;->mDisplayPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 257
    .local v0, hasDisplayPhoto:Z
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/PhotoProcessor;->mThumbnailPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    const/16 v1, 0x5a

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/providers/contacts/PhotoProcessor;->getCompressedBytes(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    return-object v1

    .line 254
    .end local v0           #hasDisplayPhoto:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 257
    .restart local v0       #hasDisplayPhoto:Z
    :cond_2
    const/16 v1, 0x5f

    goto :goto_1
.end method
