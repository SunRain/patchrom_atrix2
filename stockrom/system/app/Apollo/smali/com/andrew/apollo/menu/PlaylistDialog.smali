.class public Lcom/andrew/apollo/menu/PlaylistDialog;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private action:Ljava/lang/String;

.field private final mCreatePlaylistListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDefaultName:Ljava/lang/String;

.field private mList:[J

.field private mOriginalName:Ljava/lang/String;

.field private mPlaylist:Landroid/widget/EditText;

.field private mPlaylistDialog:Landroid/app/AlertDialog;

.field private mRenameId:J

.field private final mRenamePlaylistListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mList:[J

    .line 65
    new-instance v0, Lcom/andrew/apollo/menu/PlaylistDialog$1;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/menu/PlaylistDialog$1;-><init>(Lcom/andrew/apollo/menu/PlaylistDialog;)V

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenamePlaylistListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    new-instance v0, Lcom/andrew/apollo/menu/PlaylistDialog$2;

    invoke-direct {v0, p0}, Lcom/andrew/apollo/menu/PlaylistDialog$2;-><init>(Lcom/andrew/apollo/menu/PlaylistDialog;)V

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mCreatePlaylistListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/andrew/apollo/menu/PlaylistDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/andrew/apollo/menu/PlaylistDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/andrew/apollo/menu/PlaylistDialog;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/andrew/apollo/menu/PlaylistDialog;->idForplaylist(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/andrew/apollo/menu/PlaylistDialog;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mList:[J

    return-object v0
.end method

.method private idForplaylist(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 230
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 236
    .local v8, id:I
    if-eqz v7, :cond_1

    .line 237
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 241
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_1
    return v8
.end method

.method private makePlaylistName()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 249
    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, template:Ljava/lang/String;
    const/4 v8, 0x1

    .line 252
    .local v8, num:I
    new-array v2, v14, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v2, v13

    .line 255
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "name != \'\'"

    .line 257
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 286
    :goto_0
    return-object v4

    .line 264
    :cond_0
    new-array v1, v14, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .local v9, num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v13

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, suggestedname:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, done:Z
    move v8, v9

    .line 273
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_1
    if-nez v7, :cond_3

    .line 274
    const/4 v7, 0x1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 278
    .local v10, playlistname:Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 279
    new-array v1, v14, [Ljava/lang/Object;

    add-int/lit8 v9, v8, 0x1

    .end local v8           #num:I
    .restart local v9       #num:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v13

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 280
    const/4 v7, 0x0

    move v8, v9

    .line 282
    .end local v9           #num:I
    .restart local v8       #num:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 285
    .end local v10           #playlistname:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v11

    .line 286
    goto :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 291
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/andrew/apollo/utils/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 297
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 298
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 302
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    return-object v7
.end method

.method private setSaveButton()V
    .locals 4

    .prologue
    .line 309
    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, typedname:Ljava/lang/String;
    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 311
    .local v0, button:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Favorites"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    goto :goto_0

    .line 316
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    invoke-direct {p0, v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->idForplaylist(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    const v2, 0x7f0b0039

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 320
    :cond_3
    const v2, 0x7f0b0038

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 102
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 108
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->finish()V

    .line 116
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const v11, 0x7f0b0038

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x4100

    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/menu/PlaylistDialog;->setContentView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    .line 126
    if-eqz p1, :cond_5

    const-string v0, "rename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J

    .line 128
    if-eqz p1, :cond_6

    const-string v0, "playlistlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mList:[J

    .line 130
    const-string v0, "com.andrew.apollo.RENAME_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    iget-wide v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J

    invoke-direct {p0, v0, v1}, Lcom/andrew/apollo/menu/PlaylistDialog;->nameForId(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    .line 132
    if-eqz p1, :cond_7

    const-string v0, "default_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    .line 140
    :cond_0
    :goto_3
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .local v6, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    .line 144
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setVolumeControlStream(I)V

    .line 146
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 148
    :cond_2
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    .line 149
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 150
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 156
    const-string v7, ""

    .line 157
    .local v7, prompt:Ljava/lang/String;
    const-string v0, "com.andrew.apollo.RENAME_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, promptformat:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    aput-object v1, v0, v9

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .end local v8           #promptformat:Ljava/lang/String;
    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x4080

    iget v9, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 168
    const-string v0, "com.andrew.apollo.RENAME_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v11}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenamePlaylistListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 176
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p0, v2}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/andrew/apollo/menu/PlaylistDialog$3;

    invoke-direct {v3, p0}, Lcom/andrew/apollo/menu/PlaylistDialog$3;-><init>(Lcom/andrew/apollo/menu/PlaylistDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 186
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 192
    .end local v7           #prompt:Ljava/lang/String;
    :goto_6
    return-void

    .line 126
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    :cond_5
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rename"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlistlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    goto/16 :goto_1

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    goto/16 :goto_2

    .line 134
    :cond_8
    const-string v0, "com.andrew.apollo.CREATE_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    if-eqz p1, :cond_9

    const-string v0, "default_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    iput-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mOriginalName:Ljava/lang/String;

    goto/16 :goto_3

    .line 135
    :cond_9
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->makePlaylistName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 160
    .restart local v6       #dm:Landroid/util/DisplayMetrics;
    .restart local v7       #prompt:Ljava/lang/String;
    :cond_a
    const-string v0, "com.andrew.apollo.CREATE_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    .restart local v8       #promptformat:Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mDefaultName:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 172
    .end local v8           #promptformat:Ljava/lang/String;
    :cond_b
    const-string v0, "com.andrew.apollo.CREATE_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v11}, Lcom/andrew/apollo/menu/PlaylistDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mCreatePlaylistListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v10, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_5

    .line 188
    .end local v7           #prompt:Ljava/lang/String;
    :cond_c
    const v0, 0x7f0b0045

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->finish()V

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 330
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 333
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 206
    const-string v0, "com.andrew.apollo.RENAME_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "default_name"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "rename"

    iget-wide v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mRenameId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "com.andrew.apollo.CREATE_PLAYLIST"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "default_name"

    iget-object v1, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylist:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/andrew/apollo/menu/PlaylistDialog;->mPlaylistDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->setSaveButton()V

    .line 220
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/andrew/apollo/menu/PlaylistDialog;->setSaveButton()V

    .line 226
    return-void
.end method
