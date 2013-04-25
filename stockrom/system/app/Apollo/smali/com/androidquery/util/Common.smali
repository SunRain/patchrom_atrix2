.class public Lcom/androidquery/util/Common;
.super Ljava/lang/Object;
.source "Common.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Runnable;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field protected static final CLEAN_CACHE:I = 0x2

.field protected static final STORE_FILE:I = 0x1


# instance fields
.field private fallback:Z

.field private galleryListen:Z

.field private galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private handler:Ljava/lang/Object;

.field private lastBottom:I

.field private method:Ljava/lang/String;

.field private methodId:I

.field private osl:Landroid/widget/AbsListView$OnScrollListener;

.field private params:[Ljava/lang/Object;

.field private scrollState:I

.field private sig:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 424
    iput-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    .line 49
    return-void
.end method

.method private checkScrolledBottom(Landroid/widget/AbsListView;I)V
    .locals 5
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 186
    .local v0, cc:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 188
    .local v1, last:I
    if-nez p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-ne v0, v2, :cond_1

    .line 189
    iget v2, p0, Lcom/androidquery/util/Common;->lastBottom:I

    if-eq v1, v2, :cond_0

    .line 190
    iput v1, p0, Lcom/androidquery/util/Common;->lastBottom:I

    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/androidquery/util/Common;->lastBottom:I

    goto :goto_0
.end method

.method private varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 81
    iget-object v1, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 83
    move-object v5, p1

    .line 84
    .local v5, input:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 85
    iget-object v5, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->handler:Ljava/lang/Object;

    .line 89
    .local v0, cbo:Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 90
    move-object v0, p0

    .line 93
    .end local v0           #cbo:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/androidquery/util/Common;->fallback:Z

    iget-object v4, p0, Lcom/androidquery/util/Common;->sig:[Ljava/lang/Class;

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 111
    .end local v5           #input:[Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 95
    :cond_2
    iget v1, p0, Lcom/androidquery/util/Common;->methodId:I

    if-eqz v1, :cond_3

    .line 97
    iget v1, p0, Lcom/androidquery/util/Common;->methodId:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_3
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    const/4 v7, 0x2

    aget-object v2, v2, v7

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v1, v3, v4, v7, v8}, Lcom/androidquery/util/AQUtility;->cleanCache(Ljava/io/File;JJ)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    aget-object v2, v2, v3

    check-cast v2, [B

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->store(Ljava/io/File;[B)V

    goto :goto_1

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onScrollStateChanged(Landroid/widget/ExpandableListView;I)V
    .locals 16
    .parameter "elv"
    .parameter "scrollState"

    .prologue
    .line 217
    const v4, 0x40ff0004

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/widget/ExpandableListView;->setTag(ILjava/lang/Object;)V

    .line 219
    if-nez p2, :cond_0

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v8

    .line 222
    .local v8, first:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v10

    .line 224
    .local v10, last:I
    sub-int v7, v10, v8

    .line 226
    .local v7, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 228
    .local v1, ela:Landroid/widget/ExpandableListAdapter;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-le v9, v7, :cond_1

    .line 264
    .end local v1           #ela:Landroid/widget/ExpandableListAdapter;
    .end local v7           #count:I
    .end local v8           #first:I
    .end local v9           #i:I
    .end local v10           #last:I
    :cond_0
    return-void

    .line 230
    .restart local v1       #ela:Landroid/widget/ExpandableListAdapter;
    .restart local v7       #count:I
    .restart local v8       #first:I
    .restart local v9       #i:I
    .restart local v10       #last:I
    :cond_1
    add-int v4, v9, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    .line 232
    .local v11, packed:J
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 233
    .local v2, group:I
    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 235
    .local v3, child:I
    if-ltz v2, :cond_2

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 238
    .local v5, convertView:Landroid/view/View;
    const v4, 0x40ff0004

    invoke-virtual {v5, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 240
    .local v13, targetPacked:Ljava/lang/Long;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v4, v14, v11

    if-nez v4, :cond_5

    .line 242
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v1, v2, v4, v5, v0}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 251
    :goto_1
    const v4, 0x40ff0004

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 228
    .end local v5           #convertView:Landroid/view/View;
    .end local v13           #targetPacked:Ljava/lang/Long;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 248
    .restart local v5       #convertView:Landroid/view/View;
    .restart local v13       #targetPacked:Ljava/lang/Long;
    :cond_3
    invoke-interface {v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 253
    :cond_5
    const-string v4, "skip!"

    invoke-static {v4}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private onScrollStateChanged2(Landroid/widget/AbsListView;I)V
    .locals 12
    .parameter "lv"
    .parameter "scrollState"

    .prologue
    const v11, 0x40ff0004

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v11, v9}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 271
    if-nez p2, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 274
    .local v2, first:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v5

    .line 276
    .local v5, last:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    sub-int v1, v5, v2

    .line 280
    .local v1, count:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    .line 282
    .local v4, la:Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-le v3, v1, :cond_1

    .line 300
    .end local v1           #count:I
    .end local v2           #first:I
    .end local v3           #i:I
    .end local v4           #la:Landroid/widget/ListAdapter;
    .end local v5           #last:I
    :cond_0
    return-void

    .line 284
    .restart local v1       #count:I
    .restart local v2       #first:I
    .restart local v3       #i:I
    .restart local v4       #la:Landroid/widget/ListAdapter;
    .restart local v5       #last:I
    :cond_1
    add-int v9, v3, v2

    int-to-long v6, v9

    .line 286
    .local v6, packed:J
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, convertView:Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 289
    .local v8, targetPacked:Ljava/lang/Number;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 291
    :cond_2
    long-to-int v9, v6

    invoke-interface {v4, v9, v0, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 292
    const/4 v9, 0x0

    invoke-virtual {v0, v11, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 282
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    :cond_3
    const-string v9, "skip!"

    invoke-static {v9}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x40ff0004

    const v4, 0x40ff0002

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    invoke-static {p4, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    move v0, v2

    .line 332
    :goto_0
    return v0

    :cond_0
    move-object v0, p3

    .line 308
    check-cast v0, Landroid/widget/AbsListView;

    .line 310
    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 312
    if-nez v1, :cond_1

    .line 313
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 315
    invoke-virtual {p3, v4, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 318
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 320
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    .line 321
    goto :goto_0

    .line 324
    :cond_3
    int-to-long v0, p1

    .line 325
    instance-of v2, p3, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_4

    .line 326
    invoke-static {p0, p1}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    .line 328
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v0, v3

    .line 332
    goto :goto_0
.end method

.method public static shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"

    .prologue
    .line 337
    instance-of v0, p2, Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p0, p1, p2, p3}, Lcom/androidquery/util/Common;->shouldDelayGallery(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0, p0, p1, p2, p3}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 1
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"
    .parameter "velocity"
    .parameter "fileCheck"

    .prologue
    .line 348
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldDelayGallery(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const v6, 0x40ff0004

    const/4 v1, 0x0

    .line 353
    if-nez p3, :cond_0

    move v0, v1

    .line 401
    :goto_0
    return v0

    .line 355
    :cond_0
    invoke-static {p3, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 356
    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    .line 357
    goto :goto_0

    :cond_1
    move v0, v1

    .line 355
    goto :goto_1

    .line 360
    :cond_2
    check-cast p2, Landroid/widget/Gallery;

    .line 362
    invoke-virtual {p2, v6}, Landroid/widget/Gallery;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 364
    if-nez v0, :cond_3

    .line 366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v6, v3}, Landroid/widget/Gallery;->setTag(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p2, v1}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 371
    new-instance v3, Lcom/androidquery/util/Common;

    invoke-direct {v3}, Lcom/androidquery/util/Common;-><init>()V

    .line 372
    invoke-virtual {v3, p2}, Lcom/androidquery/util/Common;->listen(Landroid/widget/Gallery;)V

    .line 376
    :cond_3
    invoke-virtual {p2}, Landroid/widget/Gallery;->getFirstVisiblePosition()I

    move-result v3

    .line 377
    invoke-virtual {p2}, Landroid/widget/Gallery;->getLastVisiblePosition()I

    move-result v4

    .line 379
    sub-int v3, v4, v3

    .line 380
    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v3, 0x1

    .line 382
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    .line 383
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    .line 385
    if-gez v3, :cond_4

    .line 387
    sub-int/2addr v0, v3

    move v3, v1

    .line 391
    :cond_4
    if-lt p0, v3, :cond_5

    if-gt p0, v0, :cond_5

    .line 393
    const-string v2, "yes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v0, v1

    .line 396
    goto :goto_0

    .line 399
    :cond_5
    const-string v1, "no"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move v0, v2

    .line 401
    goto/16 :goto_0
.end method

.method public static showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x40ff0001

    .line 491
    if-eqz p0, :cond_0

    .line 493
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 495
    check-cast p0, Landroid/view/View;

    .line 497
    if-eqz p2, :cond_1

    .line 498
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 504
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 507
    :cond_3
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 509
    check-cast p0, Landroid/app/Dialog;

    .line 511
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    .line 513
    if-eqz p2, :cond_4

    .line 514
    invoke-virtual {v0, p0}, Lcom/androidquery/AQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    .line 516
    :cond_4
    invoke-virtual {v0, p0}, Lcom/androidquery/AQuery;->dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 408
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 414
    return-void
.end method

.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 119
    .local v0, m1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 121
    .local v2, m2:J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 122
    const/4 v4, 0x1

    .line 126
    :goto_0
    return v4

    .line 123
    :cond_0
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 124
    const/4 v4, 0x0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/Common;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;
    .locals 0
    .parameter "handler"
    .parameter "callback"
    .parameter "fallback"
    .parameter "sig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/androidquery/util/Common;"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/androidquery/util/Common;->handler:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/androidquery/util/Common;->method:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lcom/androidquery/util/Common;->fallback:Z

    .line 64
    iput-object p4, p0, Lcom/androidquery/util/Common;->sig:[Ljava/lang/Class;

    .line 66
    return-object p0
.end method

.method public forward(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 179
    iput-object p1, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    .line 180
    return-void
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    return v0
.end method

.method public listen(Landroid/widget/Gallery;)V
    .locals 1
    .parameter "gallery"

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/widget/Gallery;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    .line 431
    invoke-virtual {p1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 432
    return-void
.end method

.method public varargs method(I[Ljava/lang/Object;)Lcom/androidquery/util/Common;
    .locals 0
    .parameter "methodId"
    .parameter "params"

    .prologue
    .line 72
    iput p1, p0, Lcom/androidquery/util/Common;->methodId:I

    .line 73
    iput-object p2, p0, Lcom/androidquery/util/Common;->params:[Ljava/lang/Object;

    .line 75
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 144
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const v8, 0x40ff0004

    .line 437
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v6

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 443
    :cond_0
    iget-boolean v0, p0, Lcom/androidquery/util/Common;->galleryListen:Z

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p1, v8}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 447
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 449
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 450
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/AdapterView;->setTag(ILjava/lang/Object;)V

    .line 452
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    .line 454
    const-string v0, "redrawing"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    move v1, v6

    .line 458
    :goto_0
    if-lt v1, v3, :cond_2

    .line 477
    :cond_1
    return-void

    .line 459
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 461
    add-int v6, v4, v1

    .line 463
    invoke-virtual {v5, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 465
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 466
    const-string v0, "skip"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 458
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 468
    :cond_3
    const-string v0, "redraw"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 469
    invoke-interface {v2, v6, v5, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p0, v2}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 151
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 153
    :cond_0
    return v1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/androidquery/util/Common;->galleryListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 487
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "first"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 168
    iget v0, p0, Lcom/androidquery/util/Common;->scrollState:I

    invoke-direct {p0, p1, v0}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 170
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 172
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 202
    iput p2, p0, Lcom/androidquery/util/Common;->scrollState:I

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->checkScrolledBottom(Landroid/widget/AbsListView;I)V

    .line 206
    instance-of v0, p1, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged(Landroid/widget/ExpandableListView;I)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/util/Common;->osl:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 213
    :cond_0
    return-void

    .line 209
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/androidquery/util/Common;->onScrollStateChanged2(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 420
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/androidquery/util/Common;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method
