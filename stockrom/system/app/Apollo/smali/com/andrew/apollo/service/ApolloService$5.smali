.class Lcom/andrew/apollo/service/ApolloService$5;
.super Landroid/content/BroadcastReceiver;
.source "ApolloService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andrew/apollo/service/ApolloService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/service/ApolloService;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/service/ApolloService;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 881
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #calls: Lcom/andrew/apollo/service/ApolloService;->saveQueue(Z)V
    invoke-static {v1, v3}, Lcom/andrew/apollo/service/ApolloService;->access$2000(Lcom/andrew/apollo/service/ApolloService;Z)V

    .line 884
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const/4 v2, 0x0

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mQueueIsSaveable:Z
    invoke-static {v1, v2}, Lcom/andrew/apollo/service/ApolloService;->access$2202(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 885
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/andrew/apollo/service/ApolloService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService;->access$2308(Lcom/andrew/apollo/service/ApolloService;)I

    .line 888
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    iget-object v2, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    invoke-static {v2}, Lcom/andrew/apollo/utils/MusicUtils;->getCardId(Landroid/content/Context;)I

    move-result v2

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mCardId:I
    invoke-static {v1, v2}, Lcom/andrew/apollo/service/ApolloService;->access$2402(Lcom/andrew/apollo/service/ApolloService;I)I

    .line 889
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #calls: Lcom/andrew/apollo/service/ApolloService;->reloadQueue()V
    invoke-static {v1}, Lcom/andrew/apollo/service/ApolloService;->access$2500(Lcom/andrew/apollo/service/ApolloService;)V

    .line 890
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    #setter for: Lcom/andrew/apollo/service/ApolloService;->mQueueIsSaveable:Z
    invoke-static {v1, v3}, Lcom/andrew/apollo/service/ApolloService;->access$2202(Lcom/andrew/apollo/service/ApolloService;Z)Z

    .line 891
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const-string v2, "com.andrew.apollo.queuechanged"

    #calls: Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/andrew/apollo/service/ApolloService;->access$1000(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    .line 892
    iget-object v1, p0, Lcom/andrew/apollo/service/ApolloService$5;->this$0:Lcom/andrew/apollo/service/ApolloService;

    const-string v2, "com.andrew.apollo.metachanged"

    #calls: Lcom/andrew/apollo/service/ApolloService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/andrew/apollo/service/ApolloService;->access$1000(Lcom/andrew/apollo/service/ApolloService;Ljava/lang/String;)V

    goto :goto_0
.end method
