.class Lcom/andrew/apollo/activities/PlayExternal$1;
.super Ljava/lang/Object;
.source "PlayExternal.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/activities/PlayExternal;->play(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/PlayExternal;

.field final synthetic val$file:Ljava/lang/String;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/PlayExternal;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->this$0:Lcom/andrew/apollo/activities/PlayExternal;

    iput-object p2, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$file:Ljava/lang/String;

    iput-wide p3, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 117
    packed-switch p2, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->this$0:Lcom/andrew/apollo/activities/PlayExternal;

    invoke-virtual {v0}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    .line 135
    return-void

    .line 119
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->this$0:Lcom/andrew/apollo/activities/PlayExternal;

    iget-object v1, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$file:Ljava/lang/String;

    iget-wide v2, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$id:J

    const/4 v4, 0x0

    #calls: Lcom/andrew/apollo/activities/PlayExternal;->playOrEnqueuFile(Ljava/lang/String;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/andrew/apollo/activities/PlayExternal;->access$000(Lcom/andrew/apollo/activities/PlayExternal;Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->this$0:Lcom/andrew/apollo/activities/PlayExternal;

    invoke-virtual {v1}, Lcom/andrew/apollo/activities/PlayExternal;->finish()V

    throw v0

    .line 123
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->this$0:Lcom/andrew/apollo/activities/PlayExternal;

    iget-object v1, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$file:Ljava/lang/String;

    iget-wide v2, p0, Lcom/andrew/apollo/activities/PlayExternal$1;->val$id:J

    const/4 v4, 0x1

    #calls: Lcom/andrew/apollo/activities/PlayExternal;->playOrEnqueuFile(Ljava/lang/String;JZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/andrew/apollo/activities/PlayExternal;->access$000(Lcom/andrew/apollo/activities/PlayExternal;Ljava/lang/String;JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
