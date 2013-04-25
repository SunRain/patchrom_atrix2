.class Lcom/andrew/apollo/BottomActionBarControlsFragment$2;
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
    .line 53
    iput-object p1, p0, Lcom/andrew/apollo/BottomActionBarControlsFragment$2;->this$0:Lcom/andrew/apollo/BottomActionBarControlsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 57
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-nez v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->position()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 61
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->prev()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/andrew/apollo/IApolloService;->seek(J)J

    .line 64
    sget-object v1, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    invoke-interface {v1}, Lcom/andrew/apollo/IApolloService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
