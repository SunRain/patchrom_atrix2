.class public Lcom/androidquery/util/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .parameter "mc"
    .parameter "mp"
    .parameter "mtp"

    .prologue
    .line 41
    const/16 v0, 0x8

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 43
    iput p1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    .line 44
    iput p2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    .line 45
    iput p3, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 47
    return-void
.end method

.method private pixels(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bm"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private shrink()V
    .locals 3

    .prologue
    .line 98
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-le v1, v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    .end local v0           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 104
    .restart local v0       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 107
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-gt v1, v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 90
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "key"
    .parameter "bm"

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, old:Landroid/graphics/Bitmap;
    invoke-direct {p0, p2}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 55
    .local v1, px:I
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    if-gt v1, v2, :cond_0

    .line 56
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 57
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #old:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .restart local v0       #old:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 59
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 69
    :cond_0
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"

    .prologue
    .line 76
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    .local v0, old:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 78
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 83
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->size()I

    move-result v0

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    if-le v0, v1, :cond_1

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/androidquery/util/BitmapCache;->shrink()V

    .line 127
    const/4 v0, 0x0

    return v0
.end method
