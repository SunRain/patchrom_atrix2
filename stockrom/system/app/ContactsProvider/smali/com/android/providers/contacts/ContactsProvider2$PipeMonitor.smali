.class Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;
.super Landroid/os/AsyncTask;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataId:J

.field private final mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mRawContactId:J

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 0
    .parameter
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "descriptor"

    .prologue
    .line 7396
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7397
    iput-wide p2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    .line 7398
    iput-wide p4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    .line 7399
    iput-object p6, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 7400
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 7392
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "params"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    .line 7404
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 7406
    .local v3, is:Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7407
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 7408
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mWriteAccessLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v10}, Lcom/android/providers/contacts/ContactsProvider2;->access$200(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v10

    #calls: Lcom/android/providers/contacts/ContactsProvider2;->waitForAccess(Ljava/util/concurrent/CountDownLatch;)V
    invoke-static {v9, v10}, Lcom/android/providers/contacts/ContactsProvider2;->access$300(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V

    .line 7409
    new-instance v7, Lcom/android/providers/contacts/PhotoProcessor;

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v9}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxDisplayPhotoDim()I

    move-result v9

    iget-object v10, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailDim()I

    move-result v10

    invoke-direct {v7, v0, v9, v10}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;II)V

    .line 7413
    .local v7, processor:Lcom/android/providers/contacts/PhotoProcessor;
    iget-wide v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v9, v10}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mProfilePhotoStore:Lcom/android/providers/contacts/PhotoStore;
    invoke-static {v9}, Lcom/android/providers/contacts/ContactsProvider2;->access$400(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v6

    .line 7416
    .local v6, photoStore:Lcom/android/providers/contacts/PhotoStore;
    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v4

    .line 7420
    .local v4, photoFileId:J
    iget-wide v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_3

    .line 7422
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 7425
    .local v8, updateValues:Landroid/content/ContentValues;
    const-string v9, "skip_processing"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7427
    cmp-long v9, v4, v11

    if-eqz v9, :cond_0

    .line 7428
    const-string v9, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7430
    :cond_0
    const-string v9, "data15"

    invoke-virtual {v7}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7431
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v8, v11, v12}, Lcom/android/providers/contacts/ContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7456
    .end local v4           #photoFileId:J
    .end local v6           #photoStore:Lcom/android/providers/contacts/PhotoStore;
    .end local v7           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    .end local v8           #updateValues:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-object v13

    .line 7413
    .restart local v7       #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :cond_2
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mContactsPhotoStore:Lcom/android/providers/contacts/PhotoStore;
    invoke-static {v9}, Lcom/android/providers/contacts/ContactsProvider2;->access$500(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v6

    goto :goto_0

    .line 7435
    .restart local v4       #photoFileId:J
    .restart local v6       #photoStore:Lcom/android/providers/contacts/PhotoStore;
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7438
    .local v2, insertValues:Landroid/content/ContentValues;
    const-string v9, "skip_processing"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7440
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7441
    const-string v9, "is_primary"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7442
    cmp-long v9, v4, v11

    if-eqz v9, :cond_4

    .line 7443
    const-string v9, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 7445
    :cond_4
    const-string v9, "data15"

    invoke-virtual {v7}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 7446
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v11, "data"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7453
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #insertValues:Landroid/content/ContentValues;
    .end local v4           #photoFileId:J
    .end local v6           #photoStore:Lcom/android/providers/contacts/PhotoStore;
    .end local v7           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v1

    .line 7454
    .local v1, e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method
