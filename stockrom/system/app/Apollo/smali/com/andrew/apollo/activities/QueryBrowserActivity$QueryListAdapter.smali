.class Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/activities/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/andrew/apollo/activities/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 325
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 304
    iput-object v7, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    .line 308
    iput-object v7, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 326
    iput-object p2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    .line 327
    new-instance v0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;)Lcom/andrew/apollo/activities/QueryBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 341
    const v13, 0x7f0e004a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 342
    .local v11, tv1:Landroid/widget/TextView;
    const/high16 v13, -0x100

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    const v13, 0x7f0e004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 344
    .local v12, tv2:Landroid/widget/TextView;
    const/high16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    const v13, 0x7f0e0049

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 346
    .local v4, iv:Landroid/widget/ImageView;
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    const v13, 0x7f0e001b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 348
    .local v2, fl:Landroid/widget/FrameLayout;
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 349
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 350
    .local v9, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v9, :cond_1

    .line 352
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v13, -0x2

    iput v13, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 356
    const/4 v13, -0x2

    iput v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    const-string v13, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, mimetype:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 361
    const-string v5, "audio/"

    .line 363
    :cond_2
    const-string v13, "artist"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 364
    const-string v13, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 365
    .local v6, name:Ljava/lang/String;
    move-object v1, v6

    .line 366
    .local v1, displayname:Ljava/lang/String;
    const/4 v3, 0x0

    .line 367
    .local v3, isunknown:Z
    if-eqz v6, :cond_3

    const-string v13, "<unknown>"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 368
    :cond_3
    const v13, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    const/4 v3, 0x1

    .line 371
    :cond_4
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    const-string v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 374
    .local v7, numalbums:I
    const-string v13, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 376
    .local v8, numsongs:I
    move-object/from16 v0, p2

    invoke-static {v0, v7, v8, v3}, Lcom/andrew/apollo/utils/MusicUtils;->makeAlbumsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v10

    .line 379
    .local v10, songs_albums:Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 381
    .end local v1           #displayname:Ljava/lang/String;
    .end local v3           #isunknown:Z
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #numalbums:I
    .end local v8           #numsongs:I
    .end local v10           #songs_albums:Ljava/lang/String;
    :cond_5
    const-string v13, "album"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 382
    const-string v13, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    .restart local v6       #name:Ljava/lang/String;
    move-object v1, v6

    .line 384
    .restart local v1       #displayname:Ljava/lang/String;
    if-eqz v6, :cond_6

    const-string v13, "<unknown>"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 385
    :cond_6
    const v13, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_7
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const-string v13, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 390
    move-object v1, v6

    .line 391
    if-eqz v6, :cond_8

    const-string v13, "<unknown>"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 392
    :cond_8
    const v13, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    :cond_9
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 396
    .end local v1           #displayname:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_a
    const-string v13, "audio/"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "application/ogg"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "application/x-ogg"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 398
    :cond_b
    const-string v13, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 399
    .restart local v6       #name:Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const-string v13, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    .restart local v1       #displayname:Ljava/lang/String;
    if-eqz v1, :cond_c

    const-string v13, "<unknown>"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 404
    :cond_c
    const v13, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    :cond_d
    const-string v13, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 407
    if-eqz v6, :cond_e

    const-string v13, "<unknown>"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 408
    :cond_e
    const v13, 0x7f0b0026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 417
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 418
    const/4 p1, 0x0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    #getter for: Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->access$100(Lcom/andrew/apollo/activities/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    #setter for: Lcom/andrew/apollo/activities/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->access$102(Lcom/andrew/apollo/activities/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 422
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 424
    :cond_1
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 428
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 436
    :goto_0
    return-object v0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/andrew/apollo/activities/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->access$200(Lcom/andrew/apollo/activities/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 434
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 435
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/andrew/apollo/activities/QueryBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;

    .line 332
    return-void
.end method
