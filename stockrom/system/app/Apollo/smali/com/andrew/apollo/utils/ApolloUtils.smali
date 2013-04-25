.class public Lcom/andrew/apollo/utils/ApolloUtils;
.super Ljava/lang/Object;
.source "ApolloUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtistId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Long;
    .locals 3
    .parameter "artistName"
    .parameter "key"
    .parameter "context"

    .prologue
    .line 266
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, settings:Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "src"

    .prologue
    .line 288
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 289
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 290
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 291
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 292
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 293
    .local v2, input:Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 297
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 297
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getImageURL(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .parameter "key"
    .parameter "context"

    .prologue
    .line 145
    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    .local v0, settings:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNyanCat(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 317
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 318
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x4b

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 326
    return-object v0

    .line 322
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "newHeight"
    .parameter "newWidth"

    .prologue
    const/4 v1, 0x0

    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v7, 0x0

    .line 187
    :goto_0
    return-object v7

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 181
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 182
    .local v4, height:I
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 183
    .local v9, scaleWidth:F
    int-to-float v0, p1

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 184
    .local v8, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 185
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 186
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 187
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static isAlbum(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 233
    const-string v0, "vnd.android.cursor.dir/albums"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isArtist(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 238
    const-string v0, "vnd.android.cursor.dir/artists"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGenre(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 243
    const-string v0, "vnd.android.cursor.dir/genre"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, state:Z
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 106
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 107
    .local v4, wifiNetwork:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_0

    .line 108
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 111
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 112
    .local v2, mobileNetwork:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 116
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 117
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    .line 120
    :cond_2
    return v3
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listHeader(Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .parameter "fragment"
    .parameter "view"
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    const v2, 0x7f0e0047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, mHeader:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, mimetype:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.dir/artists"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v0           #mHeader:Landroid/widget/TextView;
    .end local v1           #mimetype:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0       #mHeader:Landroid/widget/TextView;
    .restart local v1       #mimetype:Ljava/lang/String;
    :cond_1
    const-string v2, "vnd.android.cursor.dir/albums"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static runnableBackground(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 88
    new-instance v0, Lcom/andrew/apollo/utils/ApolloUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/andrew/apollo/utils/ApolloUtils$1;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public static setArtistId(Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "artistName"
    .parameter "id"
    .parameter "key"
    .parameter "context"

    .prologue
    .line 253
    const/4 v2, 0x0

    invoke-virtual {p4, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 254
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "view"
    .parameter "bitmap"

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 60
    .local v10, vwidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 61
    .local v9, vheight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 62
    .local v2, bwidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 64
    .local v1, bheight:I
    int-to-float v11, v10

    int-to-float v12, v2

    div-float v7, v11, v12

    .line 65
    .local v7, scalex:F
    int-to-float v11, v9

    int-to-float v12, v1

    div-float v8, v11, v12

    .line 66
    .local v8, scaley:F
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    const/high16 v12, 0x3f80

    mul-float v6, v11, v12

    .line 68
    .local v6, scale:F
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 69
    .local v4, config:Landroid/graphics/Bitmap$Config;
    invoke-static {v10, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    .local v5, matrix:Landroid/graphics/Matrix;
    neg-int v11, v2

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    neg-int v12, v1

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 75
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 76
    div-int/lit8 v11, v10, 0x2

    int-to-float v11, v11

    div-int/lit8 v12, v9, 0x2

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    const/4 v11, 0x0

    invoke-virtual {v3, p1, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 80
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setImageURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "name"
    .parameter "url"
    .parameter "key"
    .parameter "context"

    .prologue
    .line 132
    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public static setListPadding(Landroid/support/v4/app/Fragment;Landroid/widget/ListView;IIII)V
    .locals 4
    .parameter "fragment"
    .parameter "mListView"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, mimetype:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.dir/albums"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    int-to-float v2, p2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    int-to-float v3, p4

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, p5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 229
    .end local v0           #mimetype:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 224
    .restart local v0       #mimetype:Ljava/lang/String;
    :cond_1
    const-string v1, "vnd.android.cursor.dir/artists"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    int-to-float v2, p2

    invoke-static {v1, v2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    int-to-float v3, p4

    invoke-static {v2, v3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v1, p3, v2, p5}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static shopFor(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "mContext"
    .parameter "artistName"

    .prologue
    .line 274
    const-string v1, "https://market.android.com/search?q=%s&c=music&featured=MUSIC_STORE_SEARCH"

    .line 275
    .local v1, str:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .local v0, shopIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public static showToast(ILandroid/widget/Toast;Landroid/content/Context;)V
    .locals 2
    .parameter "message"
    .parameter "mToast"
    .parameter "context"

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 308
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method

.method public static showUpTitleOnly(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "actionBar"

    .prologue
    .line 163
    const/16 v0, 0xc

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 166
    return-void
.end method
