.class public Lcom/andrew/apollo/ui/widgets/BottomActionBar;
.super Landroid/widget/LinearLayout;
.source "BottomActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/andrew/apollo/ui/widgets/BottomActionBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 107
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/andrew/apollo/activities/AudioPlayerHolder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e000d
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/andrew/apollo/activities/QuickQueue;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public updateBottomActionBar(Landroid/app/Activity;)V
    .locals 13
    .parameter "activity"

    .prologue
    const/4 v12, 0x1

    .line 54
    const v8, 0x7f0e000d

    invoke-virtual {p1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, bottomActionBar:Landroid/view/View;
    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sget-object v8, Lcom/andrew/apollo/utils/MusicUtils;->mService:Lcom/andrew/apollo/IApolloService;

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getCurrentAudioId()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 62
    const v8, 0x7f0e000f

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 64
    .local v7, mTrackName:Landroid/widget/TextView;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getTrackName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v8, 0x7f0e0010

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 69
    .local v2, mArtistName:Landroid/widget/TextView;
    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v8, 0x7f0e000e

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 75
    .local v1, mAlbumArt:Landroid/widget/ImageView;
    new-instance v8, Lcom/andrew/apollo/tasks/GetCachedImages;

    invoke-direct {v8, p1, v12, v1}, Lcom/andrew/apollo/tasks/GetCachedImages;-><init>(Landroid/content/Context;ILandroid/widget/ImageView;)V

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v12, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {}, Lcom/andrew/apollo/utils/MusicUtils;->getAlbumName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/andrew/apollo/tasks/GetCachedImages;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    const v8, 0x7f0e0011

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 82
    .local v4, mFavorite:Landroid/widget/ImageButton;
    invoke-static {v4}, Lcom/andrew/apollo/utils/MusicUtils;->setFavoriteImage(Landroid/widget/ImageButton;)V

    .line 85
    const v8, 0x7f0e000c

    invoke-virtual {p1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, mDivider:Landroid/widget/ImageView;
    const v8, 0x7f0e0012

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 91
    .local v6, mSearch:Landroid/widget/ImageButton;
    const v8, 0x7f0e0013

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 95
    .local v5, mOverflow:Landroid/widget/ImageButton;
    const-string v8, "bottom_action_bar_text_color"

    invoke-static {p1, v7, v8}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 96
    const-string v8, "bottom_action_bar_text_color"

    invoke-static {p1, v2, v8}, Lcom/andrew/apollo/utils/ThemeUtils;->setTextColor(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    const-string v8, "bottom_action_bar_info_divider"

    invoke-static {p1, v3, v8}, Lcom/andrew/apollo/utils/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 98
    const-string v8, "apollo_search"

    invoke-static {p1, v6, v8}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    .line 99
    const-string v8, "apollo_overflow"

    invoke-static {p1, v5, v8}, Lcom/andrew/apollo/utils/ThemeUtils;->setImageButton(Landroid/content/Context;Landroid/widget/ImageButton;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
