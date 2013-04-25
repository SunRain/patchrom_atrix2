.class Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    .line 314
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 315
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$0:Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/andrew/apollo/activities/QueryBrowserActivity;
    invoke-static {v0}, Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;->access$000(Lcom/andrew/apollo/activities/QueryBrowserActivity$QueryListAdapter;)Lcom/andrew/apollo/activities/QueryBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/andrew/apollo/activities/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 320
    return-void
.end method
