.class public Lcom/android/settings/cyanogenmod/LockscreenTargets;
.super Landroid/app/Fragment;
.source "LockscreenTargets.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/settings/cyanogenmod/IconPicker$OnIconPickListener;
.implements Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    }
.end annotation


# static fields
.field private static EMPTY_LABEL:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDialogIcon:Landroid/widget/ImageButton;

.field private mDialogLabel:Landroid/widget/Button;

.field private mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

.field private mImageTmp:Ljava/io/File;

.field private mIsLandscape:Z

.field private mIsScreenLarge:Z

.field private mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

.field private mResources:Landroid/content/res/Resources;

.field private mTargetIndex:I

.field private mTargetInset:I

.field private mTargetOffset:I

.field private mTargetStore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cyanogenmod/LockscreenTargets;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->saveAll()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/cyanogenmod/LockscreenTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/cyanogenmod/LockscreenTargets;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/IconPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Lcom/android/settings/cyanogenmod/ShortcutPickHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/cyanogenmod/LockscreenTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    return v0
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 14
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 140
    const/4 v0, 0x2

    new-array v12, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 141
    .local v12, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v10, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 142
    .local v10, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 143
    .local v8, activeFront:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080312

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    .local v1, inactiveBack:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v12, v6

    .line 145
    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p3

    move/from16 v6, p3

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v12, v0

    .line 146
    const/4 v0, 0x0

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v10, v0

    .line 147
    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, v8

    move/from16 v4, p3

    move/from16 v5, p3

    move/from16 v6, p3

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v10, v0

    .line 148
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 149
    .local v13, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v11, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 150
    .local v11, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 151
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 152
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v9, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 154
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 155
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    return-object v13

    .end local v1           #inactiveBack:Landroid/graphics/drawable/Drawable;
    .end local v8           #activeFront:Landroid/graphics/drawable/Drawable;
    .end local v9           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v13           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object/from16 v8, p2

    .line 142
    goto :goto_0
.end method

.method private initializeView(Ljava/lang/String;)V
    .locals 36
    .parameter "input"

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string p1, "empty|#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.google.android.googlequicksearchbox/.SearchActivity;S.icon_resource=ic_lockscreen_google_normal;end|empty|#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;component=com.android.gallery3d/com.android.camera.CameraLauncher;S.icon_resource=ic_lockscreen_camera_normal;end"

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-eqz v4, :cond_6

    const/16 v25, 0x7

    .line 167
    .local v25, maxTargets:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 168
    .local v26, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x108032f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 169
    .local v12, activeBack:Landroid/graphics/drawable/Drawable;
    const-string v4, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 171
    .local v31, targetStore:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v4, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080334

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 177
    .local v34, unlockFront:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080333

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 178
    .local v33, unlockBack:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v7, v10}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v14, 0x0

    .local v14, cc:I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    rsub-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0x1

    if-ge v14, v4, :cond_b

    .line 180
    const-string v6, "empty"

    .line 181
    .local v6, uri:Ljava/lang/String;
    const/16 v18, 0x0

    .line 182
    .local v18, front:Landroid/graphics/drawable/Drawable;
    move-object v13, v12

    .line 183
    .local v13, back:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 184
    .local v20, frontBlank:Z
    const/4 v8, 0x0

    .line 185
    .local v8, iconType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 186
    .local v9, iconSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    move/from16 v32, v0

    .line 187
    .local v32, tmpInset:I
    move-object/from16 v0, v31

    array-length v4, v0

    if-ge v14, v4, :cond_a

    move/from16 v0, v25

    if-ge v14, v0, :cond_a

    .line 188
    aget-object v6, v31, v14

    .line 189
    const-string v4, "empty"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 191
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v6, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v24

    .line 192
    .local v24, in:Landroid/content/Intent;
    const-string v4, "icon_file"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 193
    const-string v4, "icon_file"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 194
    .local v29, rSource:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v17, fPath:Ljava/io/File;
    if-eqz v17, :cond_2

    .line 196
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .local v19, front:Landroid/graphics/drawable/Drawable;
    move-object/from16 v18, v19

    .line 228
    .end local v17           #fPath:Ljava/io/File;
    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    .end local v29           #rSource:Ljava/lang/String;
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    if-nez v18, :cond_3

    .line 229
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 230
    .local v11, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v11, :cond_9

    .line 231
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 243
    .end local v11           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v24           #in:Landroid/content/Intent;
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    if-nez v18, :cond_5

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 245
    .local v16, emptyIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v18, v16

    .line 247
    .end local v16           #emptyIcon:Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    new-instance v4, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move/from16 v3, v20

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 166
    .end local v6           #uri:Ljava/lang/String;
    .end local v8           #iconType:Ljava/lang/String;
    .end local v9           #iconSource:Ljava/lang/String;
    .end local v12           #activeBack:Landroid/graphics/drawable/Drawable;
    .end local v13           #back:Landroid/graphics/drawable/Drawable;
    .end local v14           #cc:I
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v25           #maxTargets:I
    .end local v26           #packMan:Landroid/content/pm/PackageManager;
    .end local v31           #targetStore:[Ljava/lang/String;
    .end local v32           #tmpInset:I
    .end local v33           #unlockBack:Landroid/graphics/drawable/Drawable;
    .end local v34           #unlockFront:Landroid/graphics/drawable/Drawable;
    :cond_6
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 200
    .restart local v6       #uri:Ljava/lang/String;
    .restart local v8       #iconType:Ljava/lang/String;
    .restart local v9       #iconSource:Ljava/lang/String;
    .restart local v12       #activeBack:Landroid/graphics/drawable/Drawable;
    .restart local v13       #back:Landroid/graphics/drawable/Drawable;
    .restart local v14       #cc:I
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    .restart local v20       #frontBlank:Z
    .restart local v24       #in:Landroid/content/Intent;
    .restart local v25       #maxTargets:I
    .restart local v26       #packMan:Landroid/content/pm/PackageManager;
    .restart local v31       #targetStore:[Ljava/lang/String;
    .restart local v32       #tmpInset:I
    .restart local v33       #unlockBack:Landroid/graphics/drawable/Drawable;
    .restart local v34       #unlockFront:Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_1
    const-string v4, "icon_resource"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    const-string v4, "icon_resource"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 202
    .restart local v29       #rSource:Ljava/lang/String;
    const-string v4, "icon_package"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    .line 203
    .local v28, rPackage:Ljava/lang/String;
    if-eqz v29, :cond_2

    .line 204
    if-eqz v28, :cond_8

    .line 206
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v27

    .line 207
    .local v27, rContext:Landroid/content/Context;
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 208
    .local v23, id:I
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 209
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "_normal"

    const-string v7, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "drawable"

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 211
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 212
    const/16 v32, 0x0

    .line 213
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 214
    .end local v23           #id:I
    .end local v27           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v15

    .line 215
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 236
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24           #in:Landroid/content/Intent;
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 216
    .restart local v24       #in:Landroid/content/Intent;
    .restart local v28       #rPackage:Ljava/lang/String;
    .restart local v29       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 217
    .local v15, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v15}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 220
    .end local v15           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v7, "drawable"

    const-string v10, "android"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v7, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v7, "_normal"

    const-string v10, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "drawable"

    const-string v35, "android"

    move-object/from16 v0, v35

    invoke-virtual {v5, v7, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 223
    const/16 v32, 0x0

    .line 224
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 233
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    .restart local v11       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    goto/16 :goto_3

    .line 239
    .end local v11           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v24           #in:Landroid/content/Intent;
    :cond_a
    move/from16 v0, v25

    if-lt v14, v0, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 250
    .end local v6           #uri:Ljava/lang/String;
    .end local v8           #iconType:Ljava/lang/String;
    .end local v9           #iconSource:Ljava/lang/String;
    .end local v13           #back:Landroid/graphics/drawable/Drawable;
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v32           #tmpInset:I
    :cond_b
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v30, tDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 252
    .local v21, i:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    if-eqz v21, :cond_c

    .line 253
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4, v5, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 255
    :cond_c
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 258
    .end local v21           #i:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 259
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0758

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0759

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b08a5

    new-instance v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;

    invoke-direct {v2, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$1;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 318
    return-void
.end method

.method private resizeForDialog(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "image"

    .prologue
    .line 413
    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 414
    .local v2, size:I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 415
    .local v1, d:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 416
    .local v0, bitmapOrig:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private saveAll()V
    .locals 17

    .prologue
    .line 324
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v11, targetLayout:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v2, existingImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-eqz v14, :cond_1

    const/4 v7, 0x7

    .line 327
    .local v7, maxTargets:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    add-int/lit8 v3, v14, 0x1

    .local v3, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    add-int/2addr v14, v7

    if-gt v3, v14, :cond_3

    .line 328
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v13, v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 329
    .local v13, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v12, v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 330
    .local v12, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v10, v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 331
    .local v10, source:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v14, "empty"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v12, :cond_0

    .line 334
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v13, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 335
    .local v5, in:Landroid/content/Intent;
    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v9, v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 337
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 338
    const-string v15, "icon_package"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v14, v14, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 346
    .end local v5           #in:Landroid/content/Intent;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v14, "|"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v3           #i:I
    .end local v7           #maxTargets:I
    .end local v10           #source:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #uri:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    .line 340
    .restart local v3       #i:I
    .restart local v5       #in:Landroid/content/Intent;
    .restart local v7       #maxTargets:I
    .restart local v9       #pkgName:Ljava/lang/String;
    .restart local v10       #source:Ljava/lang/String;
    .restart local v12       #type:Ljava/lang/String;
    .restart local v13       #uri:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v14, "icon_package"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 343
    .end local v5           #in:Landroid/content/Intent;
    .end local v9           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_3

    .line 349
    .end local v10           #source:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #uri:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lockscreen_targets"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v6, :cond_5

    aget-object v8, v1, v4

    .line 352
    .local v8, pic:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "lockscreen_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 353
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 351
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 356
    .end local v8           #pic:Ljava/io/File;
    :cond_5
    return-void
.end method

.method private setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "position"
    .parameter "uri"
    .parameter "draw"
    .parameter "iconType"
    .parameter "iconSource"
    .parameter "pkgName"

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 363
    .local v15, item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v0, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v16, v0

    .line 364
    .local v16, state:Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/LayerDrawable;

    .line 365
    .local v13, inActiveLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    .line 366
    .local v11, activeLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 367
    if-eqz p4, :cond_0

    const-string v1, "icon_resource"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    .line 368
    .local v14, isSystem:Z
    :goto_0
    if-nez v14, :cond_1

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x108032f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 370
    .local v2, activeBack:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v7, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 371
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 385
    .end local v2           #activeBack:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 386
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 387
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 389
    move-object/from16 v0, p6

    iput-object v0, v15, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 390
    return-void

    .line 367
    .end local v14           #isSystem:Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 373
    .restart local v14       #isSystem:Z
    :cond_1
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 374
    .local v3, empty:Landroid/graphics/drawable/InsetDrawable;
    const/4 v1, 0x1

    invoke-virtual {v11, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v4, "_normal"

    const-string v5, "_activated"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 376
    .local v10, activeId:I
    const/4 v12, 0x0

    .line 377
    .local v12, back:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 379
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v12}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 381
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x108032f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 382
    .restart local v2       #activeBack:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1
.end method


# virtual methods
.method public iconPicked(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "in"

    .prologue
    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, ic:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 525
    .local v4, iconType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 526
    .local v7, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 527
    .local v3, iconSource:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    .line 528
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 529
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/lockscreen_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    .local v6, mImage:Ljava/io/File;
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 531
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 533
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    .line 534
    const-string v4, "icon_file"

    .line 535
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #ic:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 563
    .end local v6           #mImage:Ljava/io/File;
    .restart local v2       #ic:Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    .line 564
    .local v10, tmpIcon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iput-object v4, v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 565
    iput-object v3, v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 566
    iput-object v7, v10, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 567
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 568
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v11, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    .end local v10           #tmpIcon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_1
    :goto_1
    return-void

    .line 538
    :cond_2
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 539
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 543
    :cond_3
    if-nez p1, :cond_4

    .line 544
    const-string v11, "resource_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, resourceName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v13, "drawable"

    const-string v14, "android"

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 546
    const-string v4, "icon_resource"

    .line 547
    move-object v3, v9

    .line 548
    goto :goto_0

    .end local v9           #resourceName:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 549
    const-string v11, "resource_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 550
    .restart local v9       #resourceName:Ljava/lang/String;
    const-string v11, "package_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 552
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 553
    .local v8, rContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v11, v9, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 554
    .local v5, id:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 558
    .end local v5           #id:I
    .end local v8           #rContext:Landroid/content/Context;
    :goto_2
    const-string v4, "icon_resource"

    .line 559
    move-object v3, v9

    .line 560
    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 125
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_targets"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, shortcut_name:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 423
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v2, Lcom/android/settings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 428
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const v2, 0x7f020049

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/cyanogenmod/IconPicker;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 432
    :cond_4
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 433
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 272
    const/4 v0, 0x1

    const v1, 0x7f0b07b6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020061

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 277
    const/4 v0, 0x2

    const v1, 0x7f0b0216

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 282
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    iput-object p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->setHasOptionsMenu(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    .line 109
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    .line 111
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    .line 113
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    .line 114
    new-instance v0, Lcom/android/settings/cyanogenmod/IconPicker;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/cyanogenmod/IconPicker;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/IconPicker$OnIconPickListener;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/settings/cyanogenmod/IconPicker;

    .line 115
    new-instance v0, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/settings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/target.tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    .line 117
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b075a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    .line 118
    const v0, 0x7f040038

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v1, v2

    .line 111
    goto :goto_1

    :cond_2
    move v0, v2

    .line 112
    goto :goto_2
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 573
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 439
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 519
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 295
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 288
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->resetAll()V

    goto :goto_0

    .line 291
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->saveAll()V

    .line 292
    iget-object v1, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0757

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 443
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 268
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "target"

    .prologue
    const v9, 0x7f0800bc

    const v7, 0x7f08001a

    const/4 v8, 0x0

    .line 447
    iput p2, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 448
    if-eqz p2, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v5, :cond_2

    .line 449
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b075b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 451
    const v5, 0x7f0b075c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 452
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v6, 0x7f040037

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 453
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;

    invoke-direct {v6, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$2;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;

    invoke-direct {v6, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$3;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    .line 474
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    .line 475
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 476
    .local v2, item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    new-instance v3, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    invoke-direct {v3, p0, v8}, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    .line 478
    .local v3, tmpIcon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v5, v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 479
    iget-object v5, v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 480
    iget-object v5, v2, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 481
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 482
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    const-string v6, "empty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 483
    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v6, Lcom/android/settings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 487
    :goto_0
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 489
    const v5, 0x7f0b08a5

    new-instance v6, Lcom/android/settings/cyanogenmod/LockscreenTargets$4;

    invoke-direct {v6, p0}, Lcom/android/settings/cyanogenmod/LockscreenTargets$4;-><init>(Lcom/android/settings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    const v5, 0x7f0b00eb

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 509
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 511
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 512
    const v5, 0x102000b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v7, 0x10301b3

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 515
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    .end local v3           #tmpIcon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 485
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #item:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    .restart local v3       #tmpIcon:Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;
    .restart local v4       #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/settings/cyanogenmod/ShortcutPickHelper;

    iget-object v5, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/settings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/settings/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "isApplication"

    .prologue
    .line 395
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 396
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 397
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 398
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 399
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 404
    :goto_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 406
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/settings/cyanogenmod/LockscreenTargets;->resizeForDialog(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 410
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 402
    .restart local v0       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 408
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
