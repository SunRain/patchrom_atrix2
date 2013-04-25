.class public abstract Lcom/androidquery/AbstractAQuery;
.super Ljava/lang/Object;
.source "AbstractAQuery.java"

# interfaces
.implements Lcom/androidquery/util/Constants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidquery/AbstractAQuery",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/androidquery/util/Constants;"
    }
.end annotation


# static fields
.field private static LAYER_TYPE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ON_CLICK_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_ITEM_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final OVER_SCROLL_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static PENDING_TRANSITION_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TEXT_CHANGE_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static dialogs:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private act:Landroid/app/Activity;

.field protected ah:Lcom/androidquery/auth/AccountHandle;

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field protected progress:Ljava/lang/Object;

.field private root:Landroid/view/View;

.field private trans:Lcom/androidquery/callback/Transformer;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1211
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    .line 1274
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AdapterView;

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    .line 1360
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AbsListView;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    .line 1408
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sput-object v0, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    .line 1431
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    .line 1449
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    .line 1466
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    aput-object v1, v0, v3

    sput-object v0, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    .line 2249
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 138
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .parameter "act"
    .parameter "root"

    .prologue
    .line 158
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 160
    iput-object p2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 161
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 171
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "root"

    .prologue
    .line 147
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 149
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 150
    return-void
.end method

.method private findView(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 176
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 177
    .local v0, result:Landroid/view/View;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs findView([I)Landroid/view/View;
    .locals 3
    .parameter "path"

    .prologue
    .line 187
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, result:Landroid/view/View;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 193
    :cond_0
    return-object v1

    .line 190
    :cond_1
    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->constructor:Ljava/lang/reflect/Constructor;

    return-object v1

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private self()Lcom/androidquery/AbstractAQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    return-object p0
.end method

.method private setScrollListener()Lcom/androidquery/util/Common;
    .locals 3

    .prologue
    const v2, 0x40ff0002

    .line 1380
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    .line 1382
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/util/Common;

    .line 1383
    if-nez v1, :cond_0

    .line 1384
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    .line 1385
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1386
    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    .line 1387
    const-string v0, "set scroll listenr"

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 1390
    :cond_0
    return-object v1
.end method

.method private size(ZIZ)V
    .locals 3
    .parameter "width"
    .parameter "n"
    .parameter "dip"

    .prologue
    .line 1641
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1643
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1645
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1647
    .local v0, context:Landroid/content/Context;
    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    .line 1648
    int-to-float v2, p2

    invoke-static {v0, v2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result p2

    .line 1651
    :cond_0
    if-eqz p1, :cond_2

    .line 1652
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1657
    :goto_0
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1661
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 1654
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public adapter(Landroid/widget/Adapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Adapter;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 512
    .local v0, av:Landroid/widget/AdapterView;
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 515
    .end local v0           #av:Landroid/widget/AdapterView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public adapter(Landroid/widget/ExpandableListAdapter;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ExpandableListAdapter;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 526
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 528
    .local v0, av:Landroid/widget/ExpandableListView;
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 531
    .end local v0           #av:Landroid/widget/ExpandableListView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1691
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, callback:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "url"
    .parameter
    .parameter "expire"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;J",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1763
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p5, callback:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p5, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 1765
    invoke-virtual {p0, p5}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter "url"
    .parameter
    .parameter "expire"
    .parameter "handler"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;J",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1816
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 1817
    .local v0, cb:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p5, p6}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/androidquery/callback/AjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->expire(J)Ljava/lang/Object;

    .line 1819
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1740
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p3, callback:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p3, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 1741
    invoke-virtual {p0, p3}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "url"
    .parameter
    .parameter "handler"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1788
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 1789
    .local v0, cb:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p3, p4}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1791
    invoke-virtual {p0, p1, p2, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1838
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p4, callback:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p4, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1}, Lcom/androidquery/callback/AjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/AjaxCallback;->params(Ljava/util/Map;)Ljava/lang/Object;

    .line 1839
    invoke-virtual {p0, p4}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "url"
    .parameter
    .parameter
    .parameter "handler"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1860
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    new-instance v0, Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    .line 1861
    .local v0, cb:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {v0, p3}, Lcom/androidquery/callback/AjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, p4, p5}, Lcom/androidquery/callback/AjaxCallback;->weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1863
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public ajaxCancel()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1899
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {}, Lcom/androidquery/callback/AjaxCallback;->cancel()V

    .line 1901
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "animId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 2175
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public animate(ILandroid/view/animation/Animation$AnimationListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "animId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/animation/Animation$AnimationListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2191
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2192
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2193
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "anim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2207
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2210
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public auth(Lcom/androidquery/auth/AccountHandle;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "handle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/auth/AccountHandle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 372
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public background(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 953
    if-eqz p1, :cond_1

    .line 954
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 961
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 956
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public backgroundColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 972
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public cache(Ljava/lang/String;J)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1887
    const-class v2, [B

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->ajax(Ljava/lang/String;Ljava/lang/Class;JLjava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public checked(Z)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "checked"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 860
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    .line 861
    .local v0, cb:Landroid/widget/CompoundButton;
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 864
    .end local v0           #cb:Landroid/widget/CompoundButton;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public clear()Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x0

    .line 1528
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 1532
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1533
    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1547
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    .line 1536
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1537
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1538
    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1539
    :cond_2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 1541
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public click()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2224
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2225
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 2227
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clickable(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "clickable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 892
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 896
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public clicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1222
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1223
    .local v0, common:Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->clicked(Landroid/view/View$OnClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method protected create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v3, 0x0

    .line 102
    .local v3, result:Lcom/androidquery/AbstractAQuery;,"TT;"
    :try_start_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 103
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/androidquery/AbstractAQuery;

    move-object v3, v0

    .line 104
    iget-object v4, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    iput-object v4, v3, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<TT;>;"
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dataChanged()Lcom/androidquery/AbstractAQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/AdapterView;

    if-eqz v3, :cond_0

    .line 988
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    .line 989
    .local v1, av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 991
    .local v0, a:Landroid/widget/Adapter;
    instance-of v3, v0, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 992
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 993
    .local v2, ba:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 999
    .end local v0           #a:Landroid/widget/Adapter;
    .end local v1           #av:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #ba:Landroid/widget/BaseAdapter;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    return-object v3
.end method

.method public dismiss()Lcom/androidquery/AbstractAQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2285
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    sget-object v2, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2287
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/Dialog;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2297
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2

    .line 2289
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 2291
    .local v0, d:Landroid/app/Dialog;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2294
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public dismiss(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2267
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p1, :cond_0

    .line 2268
    :try_start_0
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2274
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 2271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enabled(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public expand(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "position"
    .parameter "expand"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 2384
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    .line 2387
    .local v0, elv:Landroid/widget/ExpandableListView;
    if-eqz p2, :cond_1

    .line 2388
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 2394
    .end local v0           #elv:Landroid/widget/ExpandableListView;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1

    .line 2390
    .restart local v0       #elv:Landroid/widget/ExpandableListView;
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0
.end method

.method public expand(Z)Lcom/androidquery/AbstractAQuery;
    .locals 5
    .parameter "expand"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 2399
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v4, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/ExpandableListView;

    if-eqz v4, :cond_0

    .line 2401
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 2402
    .local v2, elv:Landroid/widget/ExpandableListView;
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 2404
    .local v1, ela:Landroid/widget/ExpandableListAdapter;
    if-eqz v1, :cond_0

    .line 2406
    invoke-interface {v1}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 2408
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v0, :cond_1

    .line 2421
    .end local v0           #count:I
    .end local v1           #ela:Landroid/widget/ExpandableListAdapter;
    .end local v2           #elv:Landroid/widget/ExpandableListView;
    .end local v3           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v4

    return-object v4

    .line 2409
    .restart local v0       #count:I
    .restart local v1       #ela:Landroid/widget/ExpandableListAdapter;
    .restart local v2       #elv:Landroid/widget/ExpandableListView;
    .restart local v3       #i:I
    :cond_1
    if-eqz p1, :cond_2

    .line 2410
    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 2408
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2412
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1
.end method

.method public find(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public getButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1094
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "url"

    .prologue
    .line 1912
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->getExistedCacheByUrl(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCachedImage(I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "resId"

    .prologue
    .line 1974
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "url"

    .prologue
    .line 1940
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/androidquery/AbstractAQuery;->getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCachedImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "url"
    .parameter "targetWidth"

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v4, 0x0

    .line 1953
    invoke-static {p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1954
    .local v1, result:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 1955
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1956
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1957
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v4, p2, v3, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1961
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 1103
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1672
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .line 1678
    :goto_0
    return-object v0

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    goto :goto_0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1076
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 1167
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1169
    .local v0, result:Landroid/text/Editable;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 1173
    :cond_0
    return-object v0
.end method

.method public getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 1121
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method public getGallery()Landroid/widget/Gallery;
    .locals 1

    .prologue
    .line 1056
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Gallery;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 1130
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/GridView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1047
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1112
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 1085
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRatingBar()Landroid/widget/RatingBar;
    .locals 1

    .prologue
    .line 1139
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1199
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1201
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1202
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .line 1205
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getSpinner()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 1157
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1020
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1021
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1022
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1024
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 1034
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1035
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .end local v0           #result:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1183
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 1185
    .local v0, result:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1186
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1189
    :cond_0
    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1067
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 266
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1148
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public gone()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/16 v1, 0x8

    .line 907
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 908
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public hardwareAccelerated11()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x100

    .line 1511
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 1515
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "dip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1607
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1608
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public height(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "height"
    .parameter "dip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1635
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1636
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public id(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 277
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 278
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 279
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 289
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 290
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 291
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 292
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public varargs id([I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x0

    .line 302
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView([I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 303
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 304
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 305
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(I)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 544
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 546
    const v1, 0x40ff0001

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 547
    if-nez p1, :cond_1

    .line 548
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 554
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 550
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public image(Landroid/graphics/Bitmap;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 589
    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Landroid/graphics/Bitmap;F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "bm"
    .parameter "ratio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "F)TT;"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v0}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 786
    .local v0, cb:Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 787
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public image(Landroid/graphics/drawable/Drawable;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    const v1, 0x40ff0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 571
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 707
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/io/File;I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "file"
    .parameter "targetWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 747
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/androidquery/AbstractAQuery;->image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/io/File;ZILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .parameter "file"
    .parameter "memCache"
    .parameter "targetWidth"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "ZI",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    if-nez p4, :cond_0

    new-instance p4, Lcom/androidquery/callback/BitmapAjaxCallback;

    .end local p4
    invoke-direct {p4}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 767
    .restart local p4
    :cond_0
    invoke-virtual {p4, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, url:Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 771
    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 607
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZ)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .parameter "url"
    .parameter "memCache"
    .parameter "fileCache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v4, 0x0

    .line 621
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZII)Lcom/androidquery/AbstractAQuery;
    .locals 8
    .parameter "url"
    .parameter "memCache"
    .parameter "fileCache"
    .parameter "targetWidth"
    .parameter "fallbackId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII)TT;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;I)Lcom/androidquery/AbstractAQuery;
    .locals 9
    .parameter "url"
    .parameter "memCache"
    .parameter "fileCache"
    .parameter "targetWidth"
    .parameter "fallbackId"
    .parameter "preset"
    .parameter "animId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/androidquery/AbstractAQuery;->image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IF)Lcom/androidquery/AbstractAQuery;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Landroid/graphics/Bitmap;",
            "IF)TT;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const v11, 0x7f7fffff

    iget-object v12, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    iget-object v13, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v13}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;)V

    .line 686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 690
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public image(Ljava/lang/String;ZZIILcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "url"
    .parameter "memCache"
    .parameter "fileCache"
    .parameter "targetWidth"
    .parameter "resId"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZII",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p6, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v0

    .line 731
    invoke-virtual {v0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    .line 733
    invoke-virtual {p0, p6}, Lcom/androidquery/AbstractAQuery;->image(Lcom/androidquery/callback/BitmapAjaxCallback;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/view/View;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x40ff0003

    .line 2360
    if-eqz p1, :cond_0

    .line 2361
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2362
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 2377
    :goto_0
    return-object p1

    .line 2367
    :cond_0
    sget-object v0, Lcom/androidquery/AbstractAQuery;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 2368
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/androidquery/AbstractAQuery;->inflater:Landroid/view/LayoutInflater;

    .line 2372
    :cond_1
    sget-object v0, Lcom/androidquery/AbstractAQuery;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2373
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public invalidate(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1924
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1925
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1926
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1928
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public invisible()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x4

    .line 921
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method protected invoke(Lcom/androidquery/callback/AbstractAjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AbstractAjaxCallback",
            "<*TK;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, callback:Lcom/androidquery/callback/AbstractAjaxCallback;,"Lcom/androidquery/callback/AbstractAjaxCallback<*TK;>;"
    const/4 v1, 0x0

    .line 1699
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    .line 1701
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1706
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 1709
    :cond_1
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    if-eqz v0, :cond_2

    .line 1710
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->transformer(Lcom/androidquery/callback/Transformer;)Ljava/lang/Object;

    .line 1711
    iput-object v1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 1714
    :cond_2
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1715
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/app/Activity;)V

    .line 1721
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 1717
    :cond_3
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "method"
    .parameter "sig"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v2, 0x0

    .line 1497
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 1498
    .local v0, handler:Landroid/view/View;
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    .end local v0           #handler:Landroid/view/View;
    :cond_0
    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    .line 1500
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isChecked()Z
    .locals 3

    .prologue
    .line 874
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v1, 0x0

    .line 876
    .local v1, checked:Z
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_0

    .line 877
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    .line 878
    .local v0, cb:Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 881
    .end local v0           #cb:Landroid/widget/CompoundButton;
    :cond_0
    return v1
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 1011
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1298
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, listener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1301
    .local v0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1305
    .end local v0           #alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1285
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1286
    .local v0, common:Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->itemClicked(Landroid/widget/AdapterView$OnItemClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1333
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, listener:Landroid/widget/AdapterView$OnItemSelectedListener;,"Landroid/widget/AdapterView$OnItemSelectedListener;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1335
    .local v0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1338
    .end local v0           #alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public itemSelected(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1318
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_ITEM_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1319
    .local v0, common:Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->itemSelected(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public longClick()Lcom/androidquery/AbstractAQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2241
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    .line 2244
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnLongClickListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1266
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1270
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public longClicked(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    new-instance v1, Lcom/androidquery/util/Common;

    invoke-direct {v1}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v2, 0x1

    sget-object v3, Lcom/androidquery/AbstractAQuery;->ON_CLICK_SIG:[Ljava/lang/Class;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1253
    .local v0, common:Lcom/androidquery/util/Common;
    invoke-virtual {p0, v0}, Lcom/androidquery/AbstractAQuery;->longClicked(Landroid/view/View$OnLongClickListener;)Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public makeSharedFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .parameter "url"
    .parameter "filename"

    .prologue
    .line 2129
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v8, 0x0

    .line 2133
    .local v8, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2135
    .local v6, cached:Ljava/io/File;
    if-eqz v6, :cond_1

    .line 2137
    invoke-static {}, Lcom/androidquery/util/AQUtility;->getTempDir()Ljava/io/File;

    move-result-object v10

    .line 2139
    .local v10, temp:Ljava/io/File;
    if-eqz v10, :cond_1

    .line 2141
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2142
    .end local v8           #file:Ljava/io/File;
    .local v9, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 2144
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2145
    .local v0, ic:Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 2147
    .local v5, oc:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2149
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2150
    :cond_0
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    move-object v8, v9

    .line 2160
    .end local v0           #ic:Ljava/nio/channels/FileChannel;
    .end local v5           #oc:Ljava/nio/channels/FileChannel;
    .end local v6           #cached:Ljava/io/File;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #temp:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    :cond_1
    :goto_0
    return-object v8

    .line 2148
    .end local v8           #file:Ljava/io/File;
    .restart local v0       #ic:Ljava/nio/channels/FileChannel;
    .restart local v5       #oc:Ljava/nio/channels/FileChannel;
    .restart local v6       #cached:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #temp:Ljava/io/File;
    :catchall_0
    move-exception v1

    .line 2149
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2150
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 2151
    :cond_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2156
    .end local v0           #ic:Ljava/nio/channels/FileChannel;
    .end local v5           #oc:Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v7

    move-object v8, v9

    .line 2157
    .end local v6           #cached:Ljava/io/File;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #temp:Ljava/io/File;
    .local v7, e:Ljava/lang/Exception;
    .restart local v8       #file:Ljava/io/File;
    :goto_1
    invoke-static {v7}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2156
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v8           #file:Ljava/io/File;
    .restart local v0       #ic:Ljava/nio/channels/FileChannel;
    .restart local v5       #oc:Ljava/nio/channels/FileChannel;
    .restart local v6       #cached:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #temp:Ljava/io/File;
    :cond_4
    move-object v8, v9

    .end local v9           #file:Ljava/io/File;
    .restart local v8       #file:Ljava/io/File;
    goto :goto_0
.end method

.method public margin(FFFF)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .parameter "leftDip"
    .parameter "topDip"
    .parameter "rightDip"
    .parameter "bottomDip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF)TT;"
        }
    .end annotation

    .prologue
    .line 1563
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 1565
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1567
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1571
    .local v1, context:Landroid/content/Context;
    invoke-static {v1, p1}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v2

    .line 1572
    .local v2, left:I
    invoke-static {v1, p2}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v5

    .line 1573
    .local v5, top:I
    invoke-static {v1, p3}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v4

    .line 1574
    .local v4, right:I
    invoke-static {v1, p4}, Lcom/androidquery/util/AQUtility;->dip2pixel(Landroid/content/Context;F)I

    move-result v0

    .local v0, bottom:I
    move-object v6, v3

    .line 1576
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1577
    iget-object v6, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1582
    .end local v0           #bottom:I
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #left:I
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #right:I
    .end local v5           #top:I
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v6

    return-object v6
.end method

.method public overridePendingTransition5(II)Lcom/androidquery/AbstractAQuery;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1442
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->act:Landroid/app/Activity;

    const-string v1, "overridePendingTransition"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->PENDING_TRANSITION_SIG:[Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public parent(I)Lcom/androidquery/AbstractAQuery;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 221
    .local v0, node:Landroid/view/View;
    const/4 v2, 0x0

    .line 223
    .local v2, result:Landroid/view/View;
    :goto_0
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/androidquery/AbstractAQuery;->create(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v3

    return-object v3

    .line 224
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 225
    move-object v2, v0

    .line 226
    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 229
    .local v1, p:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 230
    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public progress(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-direct {p0, p1}, Lcom/androidquery/AbstractAQuery;->findView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 321
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 360
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public progress(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public rating(F)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "rating"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/RatingBar;

    if-eqz v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/RatingBar;

    .line 396
    .local v0, rb:Landroid/widget/RatingBar;
    invoke-virtual {v0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 398
    .end local v0           #rb:Landroid/widget/RatingBar;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public recycle(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x0

    .line 246
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->root:Landroid/view/View;

    .line 247
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    .line 248
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 249
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->ah:Lcom/androidquery/auth/AccountHandle;

    .line 250
    iput-object v0, p0, Lcom/androidquery/AbstractAQuery;->context:Landroid/content/Context;

    .line 251
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public scrolled(Landroid/widget/AbsListView$OnScrollListener;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1401
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androidquery/util/Common;->forward(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1405
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public scrolledBottom(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1371
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1372
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->setScrollListener()Lcom/androidquery/util/Common;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/androidquery/AbstractAQuery;->ON_SCROLLED_STATE_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    .line 1375
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/Paint;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1479
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const-string v1, "setLayerType"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->LAYER_TYPE_SIG:[Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v3, 0x1

    aput-object p2, v5, v3

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public setOverScrollMode9(I)Lcom/androidquery/AbstractAQuery;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1459
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const-string v1, "setOverScrollMode"

    sget-object v4, Lcom/androidquery/AbstractAQuery;->OVER_SCROLL_SIG:[Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public setSelection(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    .line 1353
    .local v0, alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 1356
    .end local v0           #alv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public shouldDelay(IIZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"

    .prologue
    .line 2041
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {p1, p2, p4, p5, p6}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2092
    instance-of v0, p3, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 2093
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please use the other shouldDelay methods for expandable list."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2095
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/androidquery/util/Common;->shouldDelay(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(IZLandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"

    .prologue
    .line 2018
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, -0x1

    invoke-static {p1, v0, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(IILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;F)Z
    .locals 1
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"
    .parameter "velocity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1985
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z
    .locals 1
    .parameter "convertView"
    .parameter "parent"
    .parameter "url"
    .parameter "velocity"
    .parameter "fileCheck"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1998
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-static {p1, p2, p3, p4, p5}, Lcom/androidquery/util/Common;->shouldDelay(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "dialog"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2254
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p1, :cond_0

    .line 2255
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2256
    sget-object v0, Lcom/androidquery/AbstractAQuery;->dialogs:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2261
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0

    .line 2258
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sync(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidquery/callback/AjaxCallback",
            "<TK;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1868
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    .local p1, callback:Lcom/androidquery/callback/AjaxCallback;,"Lcom/androidquery/callback/AjaxCallback<TK;>;"
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->ajax(Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 1869
    invoke-virtual {p1}, Lcom/androidquery/callback/AjaxCallback;->block()V

    .line 1870
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public tag(ILjava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "key"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 814
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 818
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 798
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 802
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public text(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "resid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 412
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 414
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public varargs text(I[Ljava/lang/Object;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter "resid"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 427
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    .line 431
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2
.end method

.method public text(Landroid/text/Spanned;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 480
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 444
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public text(Ljava/lang/CharSequence;Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "text"
    .parameter "goneIfEmpty"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/androidquery/AbstractAQuery;->gone()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    .line 463
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/androidquery/AbstractAQuery;->text(Ljava/lang/CharSequence;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    goto :goto_0
.end method

.method public textChanged(Ljava/lang/Object;Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 5
    .parameter "handler"
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1419
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v2, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1421
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 1422
    .local v1, tv:Landroid/widget/TextView;
    new-instance v2, Lcom/androidquery/util/Common;

    invoke-direct {v2}, Lcom/androidquery/util/Common;-><init>()V

    const/4 v3, 0x1

    sget-object v4, Lcom/androidquery/AbstractAQuery;->TEXT_CHANGE_SIG:[Ljava/lang/Class;

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/androidquery/util/Common;->forward(Ljava/lang/Object;Ljava/lang/String;Z[Ljava/lang/Class;)Lcom/androidquery/util/Common;

    move-result-object v0

    .line 1423
    .local v0, common:Lcom/androidquery/util/Common;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1427
    .end local v0           #common:Lcom/androidquery/util/Common;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v2

    return-object v2
.end method

.method public textColor(I)Lcom/androidquery/AbstractAQuery;
    .locals 2
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    .line 495
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public transformer(Lcom/androidquery/callback/Transformer;)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/Transformer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iput-object p1, p0, Lcom/androidquery/AbstractAQuery;->trans:Lcom/androidquery/callback/Transformer;

    .line 383
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public transparent(Z)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "transparent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 829
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/androidquery/util/AQUtility;->transparent(Landroid/view/View;Z)V

    .line 833
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public visible()Lcom/androidquery/AbstractAQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 939
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2311
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, -0x100

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/androidquery/AbstractAQuery;->webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public webImage(Ljava/lang/String;ZZI)Lcom/androidquery/AbstractAQuery;
    .locals 8
    .parameter "url"
    .parameter "zoom"
    .parameter "control"
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZI)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v7, 0x0

    .line 2331
    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2332
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v7}, Lcom/androidquery/AbstractAQuery;->setLayerType11(ILandroid/graphics/Paint;)Lcom/androidquery/AbstractAQuery;

    .line 2334
    new-instance v0, Lcom/androidquery/util/WebImage;

    iget-object v1, p0, Lcom/androidquery/AbstractAQuery;->view:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/androidquery/util/WebImage;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V

    .line 2335
    .local v0, wi:Lcom/androidquery/util/WebImage;
    invoke-virtual {v0}, Lcom/androidquery/util/WebImage;->load()V

    .line 2336
    iput-object v7, p0, Lcom/androidquery/AbstractAQuery;->progress:Ljava/lang/Object;

    .line 2339
    .end local v0           #wi:Lcom/androidquery/util/WebImage;
    :cond_0
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v1

    return-object v1
.end method

.method public width(I)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "dip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    .line 1594
    invoke-direct {p0, v0, p1, v0}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1595
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method

.method public width(IZ)Lcom/androidquery/AbstractAQuery;
    .locals 1
    .parameter "width"
    .parameter "dip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 1621
    .local p0, this:Lcom/androidquery/AbstractAQuery;,"Lcom/androidquery/AbstractAQuery<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/androidquery/AbstractAQuery;->size(ZIZ)V

    .line 1622
    invoke-direct {p0}, Lcom/androidquery/AbstractAQuery;->self()Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    return-object v0
.end method
