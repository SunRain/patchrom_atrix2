.class Lcom/andrew/apollo/adapters/PlaylistAdapter$1;
.super Ljava/lang/Object;
.source "PlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/adapters/PlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/adapters/PlaylistAdapter;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/adapters/PlaylistAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/andrew/apollo/adapters/PlaylistAdapter$1;->this$0:Lcom/andrew/apollo/adapters/PlaylistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 37
    return-void
.end method
