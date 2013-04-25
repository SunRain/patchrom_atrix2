.class Lcom/andrew/apollo/menu/PlaylistDialog$2;
.super Ljava/lang/Object;
.source "PlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andrew/apollo/menu/PlaylistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andrew/apollo/menu/PlaylistDialog;


# direct methods
.method constructor <init>(Lcom/andrew/apollo/menu/PlaylistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #getter for: Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$000(Lcom/andrew/apollo/menu/PlaylistDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #calls: Lcom/andrew/apollo/menu/PlaylistDialog;->idForplaylist(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$200(Lcom/andrew/apollo/menu/PlaylistDialog;Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, id:I
    if-ltz v0, :cond_2

    .line 85
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-static {v4, v0}, Lcom/andrew/apollo/utils/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    .line 86
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    iget-object v5, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #getter for: Lcom/andrew/apollo/menu/PlaylistDialog;->mList:[J
    invoke-static {v5}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$300(Lcom/andrew/apollo/menu/PlaylistDialog;)[J

    move-result-object v5

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    .line 93
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-virtual {v4}, Lcom/andrew/apollo/menu/PlaylistDialog;->finish()V

    .line 95
    .end local v0           #id:I
    :cond_1
    return-void

    .line 88
    .restart local v0       #id:I
    :cond_2
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    invoke-static {v4, v1}, Lcom/andrew/apollo/utils/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    .local v2, new_id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 90
    iget-object v4, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    iget-object v5, p0, Lcom/andrew/apollo/menu/PlaylistDialog$2;->this$0:Lcom/andrew/apollo/menu/PlaylistDialog;

    #getter for: Lcom/andrew/apollo/menu/PlaylistDialog;->mList:[J
    invoke-static {v5}, Lcom/andrew/apollo/menu/PlaylistDialog;->access$300(Lcom/andrew/apollo/menu/PlaylistDialog;)[J

    move-result-object v5

    invoke-static {v4, v5, v2, v3}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0
.end method
