.class Lcom/andrew/apollo/adapters/TrackAdapter$1;
.super Ljava/lang/Object;
.source "TrackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/adapters/TrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/adapters/TrackAdapter;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/adapters/TrackAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/andrew/apollo/adapters/TrackAdapter$1;->this$0:Lcom/andrew/apollo/adapters/TrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 39
    return-void
.end method
