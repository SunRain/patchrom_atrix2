.class Lcom/andrew/apollo/AudioPlayerFragment$10;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/AudioPlayerFragment;
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
    .line 280
    iput-object p1, p0, Lcom/andrew/apollo/AudioPlayerFragment$10;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 1
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/andrew/apollo/AudioPlayerFragment$10;->this$0:Lcom/andrew/apollo/AudioPlayerFragment;

    #calls: Lcom/andrew/apollo/AudioPlayerFragment;->scanForward(IJ)V
    invoke-static {v0, p4, p2, p3}, Lcom/andrew/apollo/AudioPlayerFragment;->access$1000(Lcom/andrew/apollo/AudioPlayerFragment;IJ)V

    .line 284
    return-void
.end method
