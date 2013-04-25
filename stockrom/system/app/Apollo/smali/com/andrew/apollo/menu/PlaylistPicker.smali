.class public Lcom/andrew/apollo/menu/PlaylistPicker;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlaylistPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mAllPlayLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mList:[J

.field mPlayListNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayListPickerDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mList:[J

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->finish()V

    .line 39
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 44
    iget-object v6, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "id"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 45
    .local v1, listId:J
    iget-object v6, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v7, "name"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 47
    .local v3, listName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 49
    .local v4, mCreateShortcut:Z
    if-eqz v4, :cond_1

    .line 50
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v5, shortcut:Landroid/content/Intent;
    const-string v6, "id"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v7, 0x7f020017

    invoke-static {p0, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v0}, Lcom/andrew/apollo/menu/PlaylistPicker;->setResult(ILandroid/content/Intent;)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    .end local v5           #shortcut:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->finish()V

    .line 72
    return-void

    .line 61
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-ltz v6, :cond_2

    .line 62
    iget-object v6, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mList:[J

    invoke-static {p0, v6, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJ)V

    goto :goto_0

    .line 63
    :cond_2
    const-wide/16 v6, -0x3

    cmp-long v6, v1, v6

    if-nez v6, :cond_3

    .line 64
    iget-object v6, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mList:[J

    invoke-static {p0, v6}, Lcom/andrew/apollo/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    goto :goto_0

    .line 65
    :cond_3
    const-wide/16 v6, -0x4

    cmp-long v6, v1, v6

    if-nez v6, :cond_0

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.andrew.apollo.CREATE_PLAYLIST"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "playlistlist"

    iget-object v7, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mList:[J

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/andrew/apollo/menu/PlaylistPicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/menu/PlaylistPicker;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 82
    const-string v1, "com.andrew.apollo.ADD_TO_PLAYLIST"

    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlistlist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-static {p0, v3, v1}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistList(Landroid/content/Context;ZLjava/util/List;)V

    .line 86
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "playlistlist"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mList:[J

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    iget-object v3, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    .line 107
    .end local v0           #i:I
    :cond_1
    :goto_1
    return-void

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-static {p0, v1, v2}, Lcom/andrew/apollo/utils/MusicUtils;->makePlaylistList(Landroid/content/Context;ZLjava/util/List;)V

    .line 96
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 97
    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mAllPlayLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v3, "name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    iget-object v3, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 104
    .end local v0           #i:I
    :cond_4
    const v1, 0x7f0b0045

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistPicker;->finish()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 115
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 122
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistPicker;->mPlayListPickerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    :cond_0
    return-void
.end method
