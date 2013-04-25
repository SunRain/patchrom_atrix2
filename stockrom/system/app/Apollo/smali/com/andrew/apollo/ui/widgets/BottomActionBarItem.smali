.class public Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;
.super Landroid/widget/ImageButton;
.source "BottomActionBarItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 50
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private showPopup(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 87
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    .local v0, popup:Landroid/widget/PopupMenu;
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 89
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 90
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 91
    return-void
.end method


# virtual methods
.method public initAlbumImages()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lcom/andrew/apollo/tasks/FetchAlbumImages;

    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/tasks/FetchAlbumImages;-><init>(Landroid/content/Context;I)V

    .line 134
    .local v0, getAlbumImages:Lcom/andrew/apollo/tasks/FetchAlbumImages;
    invoke-virtual {v0}, Lcom/andrew/apollo/tasks/FetchAlbumImages;->runTask()V

    .line 135
    return-void
.end method

.method public initArtistImages()V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lcom/andrew/apollo/tasks/FetchArtistImages;

    iget-object v1, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/andrew/apollo/tasks/FetchArtistImages;-><init>(Landroid/content/Context;I)V

    .line 126
    .local v0, getArtistImages:Lcom/andrew/apollo/tasks/FetchArtistImages;
    invoke-virtual {v0}, Lcom/andrew/apollo/tasks/FetchArtistImages;->runTask()V

    .line 127
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->toggleFavorite()V

    .line 70
    invoke-static {p0}, Lcom/andrew/apollo/utils/MusicUtils;->setFavoriteImage(Landroid/widget/ImageButton;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->showPopup(Landroid/view/View;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0011
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return v4

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    const-class v3, Lcom/andrew/apollo/preferences/SettingsHolder;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 100
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v0, "android.media.extra.AUDIO_SESSION"

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->shuffleAll()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f0e0064
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shuffleAll()V
    .locals 7

    .prologue
    .line 141
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 142
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    .line 145
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "is_music=1"

    .line 146
    .local v3, selection:Ljava/lang/String;
    const-string v5, "title_key"

    .line 147
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 149
    iget-object v0, p0, Lcom/andrew/apollo/ui/widgets/BottomActionBarItem;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/andrew/apollo/utils/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v6, 0x0

    .line 153
    :cond_0
    return-void
.end method
