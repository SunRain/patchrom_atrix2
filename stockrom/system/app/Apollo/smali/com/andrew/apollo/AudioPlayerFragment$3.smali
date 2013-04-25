.class Lcom/andrew/apollo/AudioPlayerFragment$3;
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
    .line 111
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$3;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$3;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->cycleRepeat()V
    invoke-static {v0}, Lcom/andrew/apollo/AudioPlayerFragment;->access$200(Lcom/andrew/apollo/AudioPlayerFragment;)V

    .line 116
    return-void
.end method
