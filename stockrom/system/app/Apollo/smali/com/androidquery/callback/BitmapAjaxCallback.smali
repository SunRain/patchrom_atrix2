.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I

.field private static BIG_PIXELS:I

.field private static BIG_TPIXELS:I

.field private static SMALL_MAX:I

.field private static SMALL_PIXELS:I

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private reuse:Landroid/graphics/BitmapFactory$Options;

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 56
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 57
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 58
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 59
    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 60
    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 403
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 408
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 77
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 86
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "iv"

    .prologue
    .line 826
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 828
    .local v0, ivs:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-nez v0, :cond_1

    .line 830
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0           #ivs:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 833
    .restart local v0       #ivs:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :goto_0
    return-void

    .line 837
    :cond_0
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    const/4 v2, 0x0

    .line 763
    if-eqz p4, :cond_0

    .line 764
    move/from16 v0, p6

    invoke-static {p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 767
    :cond_0
    if-eqz v2, :cond_1

    .line 768
    const v1, 0x40ff0001

    invoke-virtual {p2, v1, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 770
    const/4 v1, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v1}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 771
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move-object/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    invoke-static/range {v1 .. v10}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFILjava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    .line 782
    :goto_0
    return-void

    .line 773
    :cond_1
    new-instance v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v2}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 774
    invoke-virtual {v2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p10

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    .line 775
    if-eqz p0, :cond_2

    .line 776
    invoke-virtual {v2, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {v2, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "data"

    .prologue
    .line 320
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->reuse:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 439
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 451
    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    goto :goto_0

    .line 446
    :cond_3
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 515
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 516
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 517
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 518
    return-void
.end method

.method protected static clearTasks()V
    .locals 1

    .prologue
    .line 521
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 522
    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"
    .parameter "data"
    .parameter "options"

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    .local v0, result:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_1

    .line 223
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    :cond_0
    :goto_0
    return-object v0

    .line 224
    :cond_1
    if-eqz p1, :cond_0

    .line 225
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static fadeIn(II)Z
    .locals 2
    .parameter "animation"
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 738
    packed-switch p0, :pswitch_data_0

    .line 746
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 742
    :pswitch_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 744
    :pswitch_2
    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "iv"
    .parameter "bm"
    .parameter "fallback"

    .prologue
    const/4 v1, 0x1

    .line 630
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_0

    .line 631
    const/4 p1, 0x0

    .line 634
    :cond_0
    if-eqz p1, :cond_2

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 642
    :cond_1
    :goto_0
    return-object p1

    .line 636
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    .line 637
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 638
    :cond_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 639
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static getBCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 528
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 370
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 372
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 384
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 541
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 543
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 595
    if-gtz p1, :cond_0

    .line 598
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, key:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-static {v1, v3, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    .line 400
    :cond_0
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"
    .parameter "targetWidth"

    .prologue
    .line 562
    invoke-static {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 255
    .line 257
    if-eqz p4, :cond_1

    .line 261
    const-string v0, "inMutable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p4, v0, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    iput v3, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object v0, p4

    .line 282
    :goto_0
    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    if-eqz p4, :cond_0

    .line 286
    :try_start_1
    const-string v1, "reused"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    const-string v1, "inBitmap"

    invoke-static {p4, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :cond_0
    :goto_1
    return-object v0

    .line 264
    :cond_1
    if-lez p2, :cond_3

    .line 266
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 269
    invoke-static {p0, p1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 271
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 272
    if-nez p3, :cond_2

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 273
    :cond_2
    invoke-static {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result v2

    .line 275
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 276
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 291
    :goto_2
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 292
    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 290
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static getSCache()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 536
    :cond_0
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "iv"
    .parameter "bm"
    .parameter "ratio"
    .parameter "anchor"
    .parameter "file"
    .parameter "reuse"

    .prologue
    .line 685
    const/4 v0, 0x0

    .line 687
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 688
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    .line 693
    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v0

    .line 690
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0       #bd:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method private static memGet(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"
    .parameter "targetWidth"

    .prologue
    .line 567
    invoke-static {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    .line 570
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 572
    .local v1, result:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 573
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 574
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 577
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :cond_0
    if-nez v1, :cond_1

    .line 578
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 579
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 581
    .restart local v1       #result:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 583
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 584
    const/4 v2, 0x0

    sput-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 585
    const/4 v1, 0x0

    .line 591
    :cond_1
    return-object v1
.end method

.method private static memPut(Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "url"
    .parameter "targetWidth"
    .parameter "bm"
    .parameter "invalid"

    .prologue
    .line 603
    if-nez p2, :cond_0

    .line 619
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    .line 607
    .local v1, pixels:I
    const/4 v0, 0x0

    .line 609
    .local v0, cache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p3, :cond_1

    .line 610
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 617
    :goto_1
    invoke-static {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 611
    :cond_1
    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v1, v2, :cond_2

    .line 612
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 614
    :cond_2
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_1
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x1

    .line 648
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 650
    :cond_0
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 660
    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method private static sampleSize(II)I
    .locals 3
    .parameter "width"
    .parameter "target"

    .prologue
    .line 303
    const/4 v1, 0x1

    .line 305
    .local v1, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 316
    :cond_0
    return v1

    .line 307
    :cond_1
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_0

    .line 311
    div-int/lit8 p0, p0, 0x2

    .line 312
    mul-int/lit8 v1, v1, 0x2

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 10
    .parameter "url"
    .parameter "iv"
    .parameter "bm"
    .parameter "isPreset"

    .prologue
    const/4 v4, 0x0

    .line 667
    if-nez p3, :cond_1

    .line 668
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    if-eqz p4, :cond_2

    .line 673
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    move-object v0, p2

    move-object v1, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_0

    .line 678
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getCacheFile()Ljava/io/File;

    move-result-object v8

    iget-object v9, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->reuse:Landroid/graphics/BitmapFactory$Options;

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFILjava/io/File;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFILjava/io/File;Landroid/graphics/BitmapFactory$Options;)V
    .locals 13
    .parameter "iv"
    .parameter "bm"
    .parameter "preset"
    .parameter "fallback"
    .parameter "animation"
    .parameter "ratio"
    .parameter "anchor"
    .parameter "source"
    .parameter "file"
    .parameter "reuse"

    .prologue
    .line 699
    move/from16 v0, p3

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 700
    if-nez p1, :cond_0

    .line 701
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 734
    :goto_0
    return-void

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 705
    invoke-static/range {v2 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 706
    .local v9, d:Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .line 708
    .local v8, anim:Landroid/view/animation/Animation;
    move/from16 v0, p4

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 709
    if-nez p2, :cond_2

    .line 710
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    .end local v8           #anim:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v8, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 711
    .restart local v8       #anim:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 712
    const-wide/16 v2, 0x12c

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 726
    :cond_1
    :goto_1
    invoke-virtual {p0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    if-eqz v8, :cond_4

    .line 729
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 730
    invoke-virtual {p0, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 715
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v2 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FFLjava/io/File;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 716
    .local v11, pd:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x2

    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v11, v10, v2

    const/4 v2, 0x1

    aput-object v9, v10, v2

    .line 717
    .local v10, ds:[Landroid/graphics/drawable/Drawable;
    new-instance v12, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v12, v10}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 718
    .local v12, td:Landroid/graphics/drawable/TransitionDrawable;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 719
    const/16 v2, 0x12c

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 720
    move-object v9, v12

    goto :goto_1

    .line 722
    .end local v10           #ds:[Landroid/graphics/drawable/Drawable;
    .end local v11           #pd:Landroid/graphics/drawable/Drawable;
    .end local v12           #td:Landroid/graphics/drawable/TransitionDrawable;
    :cond_3
    if-lez p4, :cond_1

    .line 723
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, p4

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_1

    .line 732
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static setCacheLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 475
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 476
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 477
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 233
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 236
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setIconCacheLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 465
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 466
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 467
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 507
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 508
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 509
    return-void
.end method

.method public static setPixelLimit(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 485
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 486
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 487
    return-void
.end method

.method public static setSmallPixel(I)V
    .locals 0
    .parameter "pixels"

    .prologue
    .line 497
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 498
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 499
    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "cacheDir"
    .parameter "url"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "anchor"

    .prologue
    .line 197
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 199
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 167
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 791
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 793
    if-nez v1, :cond_0

    .line 794
    invoke-virtual {p0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 795
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 819
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 800
    if-eqz v2, :cond_1

    .line 801
    const v3, 0x40ff0001

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 802
    new-instance v0, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 803
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0

    .line 808
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 810
    sget-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 811
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 812
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0

    .line 814
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 815
    invoke-direct {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "bm"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 145
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 12
    .parameter "url"
    .parameter "bm"
    .parameter "status"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 416
    .local v3, firstView:Landroid/widget/ImageView;
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/WeakHashMap;

    .line 419
    .local v10, ivs:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-eqz v10, :cond_0

    invoke-virtual {v10, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 420
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 423
    :cond_1
    if-eqz v10, :cond_2

    .line 425
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 427
    .local v11, set:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ImageView;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    .end local v11           #set:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_2
    return-void

    .line 427
    .restart local v11       #set:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 428
    .local v7, view:Landroid/widget/ImageView;
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 429
    .local v5, cb:Lcom/androidquery/callback/BitmapAjaxCallback;
    iput-object p3, v5, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 430
    invoke-direct/range {v4 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_0
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 1
    .parameter "url"
    .parameter "iv"
    .parameter "bm"
    .parameter "status"

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 456
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "resId"

    .prologue
    .line 155
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 156
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "imageFile"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 122
    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"
    .parameter "file"
    .parameter "status"

    .prologue
    .line 336
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 1
    .parameter "view"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 99
    return-object p0
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 550
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_1
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    invoke-static {p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bm"

    .prologue
    .line 624
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, p2, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;ILandroid/graphics/Bitmap;Z)V

    .line 625
    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "preset"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 134
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "ratio"

    .prologue
    .line 177
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 178
    return-object p0
.end method

.method public reuse(Landroid/graphics/BitmapFactory$Options;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 2
    .parameter "reuse"

    .prologue
    .line 211
    sget v0, Lcom/androidquery/AQuery;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->reuse:Landroid/graphics/BitmapFactory$Options;

    .line 214
    :cond_0
    return-object p0
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .locals 0
    .parameter "targetWidth"

    .prologue
    .line 109
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 110
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "url"
    .parameter "data"
    .parameter "status"

    .prologue
    .line 344
    const/4 v1, 0x0

    invoke-direct {p0, v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 348
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez v1, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    .line 360
    :cond_1
    return-object v0

    .line 350
    :cond_2
    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 351
    :cond_3
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
