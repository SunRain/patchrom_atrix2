.class public Lcom/andrew/apollo/BottomActionBarFragment;
.super Landroid/support/v4/app/Fragment;
.source "BottomActionBarFragment.java"


# instance fields
.field private mBottomActionBar:Lcom/andrew/apollo/ui/widgets/BottomActionBar;

.field private final mMediaStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    new-instance v0, Lcom/andrew/apollo/BottomActionBarFragment$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/BottomActionBarFragment$1;-><init>(Lcom/andrew/apollo/BottomActionBarFragment;)V

    iput-object v0, p0, Lcom/andrew/apollo/BottomActionBarFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/BottomActionBarFragment;)Lcom/andrew/apollo/ui/widgets/BottomActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/andrew/apollo/BottomActionBarFragment;->mBottomActionBar:Lcom/andrew/apollo/ui/widgets/BottomActionBar;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 29
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, root:Landroid/view/View;
    new-instance v1, Lcom/andrew/apollo/ui/widgets/BottomActionBar;

    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/andrew/apollo/ui/widgets/BottomActionBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/andrew/apollo/BottomActionBarFragment;->mBottomActionBar:Lcom/andrew/apollo/ui/widgets/BottomActionBar;

    .line 31
    return-object v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.andrew.apollo.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/BottomActionBarFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/andrew/apollo/BottomActionBarFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andrew/apollo/BottomActionBarFragment;->mMediaStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 59
    return-void
.end method
