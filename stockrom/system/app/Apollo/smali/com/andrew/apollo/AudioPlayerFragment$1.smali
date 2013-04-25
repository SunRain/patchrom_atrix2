.class Lcom/andrew/apollo/AudioPlayerFragment$1;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/AudioPlayerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$1;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$1;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->tracksBrowser()V
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$000(Lcom/andrew/apollo/AudioPlayerFragment;)V

    .line 89
    return-void
.end method
