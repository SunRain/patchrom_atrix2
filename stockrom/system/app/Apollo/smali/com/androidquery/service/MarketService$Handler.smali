.class Lcom/androidquery/service/MarketService$Handler;
.super Ljava/lang/Object;
.source "MarketService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/service/MarketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/service/MarketService;


# direct methods
.method private constructor <init>(Lcom/androidquery/service/MarketService;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/service/MarketService;Lcom/androidquery/service/MarketService$Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/androidquery/service/MarketService$Handler;-><init>(Lcom/androidquery/service/MarketService;)V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .parameter "opening"
    .parameter "tag"
    .parameter "output"
    .parameter "xmlReader"

    .prologue
    .line 522
    const-string v0, "li"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    if-eqz p1, :cond_1

    .line 525
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 526
    const-string v0, "\u2022"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 527
    const-string v0, "  "

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v0, "\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 501
    packed-switch p2, :pswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 503
    :pswitch_0
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;
    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->rateUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$9(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/androidquery/service/MarketService;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 506
    :pswitch_1
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;
    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->updateUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$11(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/androidquery/service/MarketService;->openUrl(Landroid/app/Activity;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$10(Landroid/app/Activity;Ljava/lang/String;)Z

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->act:Landroid/app/Activity;
    invoke-static {v0}, Lcom/androidquery/service/MarketService;->access$0(Lcom/androidquery/service/MarketService;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/service/MarketService$Handler;->this$0:Lcom/androidquery/service/MarketService;

    #getter for: Lcom/androidquery/service/MarketService;->version:Ljava/lang/String;
    invoke-static {v1}, Lcom/androidquery/service/MarketService;->access$12(Lcom/androidquery/service/MarketService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/androidquery/service/MarketService;->setSkipVersion(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/androidquery/service/MarketService;->access$13(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
