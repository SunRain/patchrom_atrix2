.class Lcom/andrew/apollo/activities/TracksBrowser$3;
.super Ljava/lang/Object;
.source "TracksBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/activities/TracksBrowser;->setArtistImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/TracksBrowser;

.field final synthetic val$mFirstHalfImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/TracksBrowser;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    iput-object p2, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->val$mFirstHalfImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v1}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v3}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v3

    iget-object v4, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v4}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v1}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v2}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 375
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    #getter for: Lcom/andrew/apollo/activities/TracksBrowser;->mHits:[J
    invoke-static {v1}, Lcom/andrew/apollo/activities/TracksBrowser;->access$100(Lcom/andrew/apollo/activities/TracksBrowser;)[J

    move-result-object v1

    aget-wide v1, v1, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->this$0:Lcom/andrew/apollo/activities/TracksBrowser;

    invoke-static {v1}, Lcom/andrew/apollo/utils/ApolloUtils;->getNyanCat(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    .line 377
    .local v0, meow:Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/andrew/apollo/activities/TracksBrowser$3;->val$mFirstHalfImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 380
    .end local v0           #meow:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    return-void
.end method
