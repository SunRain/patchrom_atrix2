.class public Lcom/andrew/apollo/tasks/BitmapFromURL;
.super Landroid/os/AsyncTask;
.source "BitmapFromURL.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "iv"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 28
    iget-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->mImageView:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "params"

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/andrew/apollo/utils/ApolloUtils;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->bitmapReference:Ljava/lang/ref/WeakReference;

    .line 34
    iget-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->bitmapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/BitmapFromURL;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/andrew/apollo/tasks/BitmapFromURL;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/andrew/apollo/utils/ApolloUtils;->runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/andrew/apollo/tasks/BitmapFromURL;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
