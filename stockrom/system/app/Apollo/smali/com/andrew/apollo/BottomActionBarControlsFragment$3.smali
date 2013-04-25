.class Lcom/andrew/apollo/BottomActionBarControlsFragment$3;
.super Ljava/lang/Object;
.source "BottomActionBarControlsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/BottomActionBarControlsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/BottomActionBarControlsFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment$3;->this$0:Lcom/andrew/apollo/BottomActionBarControlsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment$3;->this$0:Lcom/andrew/apollo/BottomActionBarControlsFragment;

    #calls: Lcom/andrew/apollo/BottomActionBarControlsFragment;->doPauseResume()V
    invoke-static {v0}, Lcom/andrew/apollo/BottomActionBarControlsFragment;->access$100(Lcom/andrew/apollo/BottomActionBarControlsFragment;)V

    .line 78
    return-void
.end method
