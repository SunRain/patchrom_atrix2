.class final Lcom/andrew/apollo/utils/ApolloUtils$1;
.super Ljava/lang/Object;
.source "ApolloUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/utils/ApolloUtils;->runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/andrew/apollo/utils/ApolloUtils$1;->val$view:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/andrew/apollo/utils/ApolloUtils$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/andrew/apollo/utils/ApolloUtils$1;->val$view:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/andrew/apollo/utils/ApolloUtils$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/andrew/apollo/utils/ApolloUtils;->setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 93
    return-void
.end method
