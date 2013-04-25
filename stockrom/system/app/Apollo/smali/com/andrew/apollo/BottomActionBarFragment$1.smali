.class Lcom/andrew/apollo/BottomActionBarFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BottomActionBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/BottomActionBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/BottomActionBarFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/BottomActionBarFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/andrew/apollo/BottomActionBarFragment$1;->this$0:Lcom/andrew/apollo/BottomActionBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/andrew/apollo/BottomActionBarFragment$1;->this$0:Lcom/andrew/apollo/BottomActionBarFragment;

    #getter for: Lcom/andrew/apollo/BottomActionBarFragment;->mBottomActionBar:Lcom/andrew/apollo/ui/widgets/BottomActionBar;
    invoke-static {v0}, Lcom/andrew/apollo/BottomActionBarFragment;->access$000(Lcom/andrew/apollo/BottomActionBarFragment;)Lcom/andrew/apollo/ui/widgets/BottomActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/andrew/apollo/BottomActionBarFragment$1;->this$0:Lcom/andrew/apollo/BottomActionBarFragment;

    #getter for: Lcom/andrew/apollo/BottomActionBarFragment;->mBottomActionBar:Lcom/andrew/apollo/ui/widgets/BottomActionBar;
    invoke-static {v0}, Lcom/andrew/apollo/BottomActionBarFragment;->access$000(Lcom/andrew/apollo/BottomActionBarFragment;)Lcom/andrew/apollo/ui/widgets/BottomActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarFragment$1;->this$0:Lcom/andrew/apollo/BottomActionBarFragment;

    invoke-virtual {v1}, Lcom/andrew/apollo/BottomActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/andrew/apollo/ui/widgets/BottomActionBar;->updateBottomActionBar(Landroid/app/Activity;)V

    .line 44
    :cond_0
    return-void
.end method
