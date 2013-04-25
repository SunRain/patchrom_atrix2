.class Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;->this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;->this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->access$000(Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;Z)V

    .line 120
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;->this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;->this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton$1;->this$0:Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;

    #getter for: Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->access$100(Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/andrew/apollo/ui/widgets/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    :cond_0
    return-void
.end method
