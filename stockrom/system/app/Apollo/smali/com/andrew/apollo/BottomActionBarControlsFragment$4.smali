.class Lcom/andrew/apollo/BottomActionBarControlsFragment$4;
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
    .line 82
    iput-object p1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment$4;->this$0:Lcom/andrew/apollo/BottomActionBarControlsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 86
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
