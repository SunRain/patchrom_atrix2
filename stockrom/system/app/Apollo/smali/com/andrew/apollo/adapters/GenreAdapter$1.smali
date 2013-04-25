.class Lcom/andrew/apollo/adapters/GenreAdapter$1;
.super Ljava/lang/Object;
.source "GenreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/adapters/GenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/adapters/GenreAdapter;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/adapters/GenreAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/andrew/apollo/adapters/GenreAdapter$1;->this$0:Lcom/andrew/apollo/adapters/GenreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 40
    return-void
.end method
