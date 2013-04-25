.class Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;
.super Ljava/lang/Object;
.source "CIDCircus.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cyanogenmod/CIDCircus$Board;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;


# direct methods
.method constructor <init>(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 9
    .parameter "animation"
    .parameter "totalTime"
    .parameter "deltaTime"

    .prologue
    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 267
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v6, v0}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 268
    .local v4, v:Landroid/view/View;
    instance-of v6, v4, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;

    if-nez v6, :cond_1

    .line 266
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 269
    check-cast v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;

    .line 270
    .local v2, nv:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    long-to-float v6, p4

    const/high16 v7, 0x447a

    div-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->update(F)V

    .line 272
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_2
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 273
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    invoke-virtual {v6, v1}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 274
    .local v5, v2:Landroid/view/View;
    instance-of v6, v5, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;

    if-nez v6, :cond_2

    .line 272
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object v3, v5

    .line 275
    check-cast v3, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;

    .line 276
    .local v3, nv2:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    invoke-virtual {v2, v3}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->overlap(Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;)F

    goto :goto_3

    .line 279
    .end local v3           #nv2:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    .end local v5           #v2:Landroid/view/View;
    :cond_3
    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->a:F

    invoke-virtual {v2, v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->setRotation(F)V

    .line 280
    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->x:F

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->getPivotX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->setX(F)V

    .line 281
    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->y:F

    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->getPivotY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->setY(F)V

    .line 283
    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->x:F

    sget v7, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_RADIUS:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->x:F

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    #getter for: Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardWidth:I
    invoke-static {v7}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->access$100(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)I

    move-result v7

    sget v8, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_RADIUS:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->y:F

    sget v7, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_RADIUS:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, v2, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->y:F

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/CIDCircus$Board$1;->this$0:Lcom/android/settings/cyanogenmod/CIDCircus$Board;

    #getter for: Lcom/android/settings/cyanogenmod/CIDCircus$Board;->boardHeight:I
    invoke-static {v7}, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->access$000(Lcom/android/settings/cyanogenmod/CIDCircus$Board;)I

    move-result v7

    sget v8, Lcom/android/settings/cyanogenmod/CIDCircus$Board;->MAX_RADIUS:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 288
    :cond_4
    invoke-virtual {v2}, Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;->reset()V

    goto :goto_1

    .line 293
    .end local v1           #j:I
    .end local v2           #nv:Lcom/android/settings/cyanogenmod/CIDCircus$Board$CID;
    .end local v4           #v:Landroid/view/View;
    :cond_5
    return-void
.end method
