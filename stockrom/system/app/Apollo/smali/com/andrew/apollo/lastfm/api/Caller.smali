.class public Lcom/andrew/apollo/lastfm/api/Caller;
.super Ljava/lang/Object;
.source "Caller.java"


# static fields
.field private static final instance:Lcom/andrew/apollo/lastfm/api/Caller;


# instance fields
.field private final apiRootUrl:Ljava/lang/String;

.field private lastResult:Lcom/andrew/apollo/lastfm/api/Result;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/andrew/apollo/lastfm/api/Caller;

    invoke-direct {v0}, Lcom/andrew/apollo/lastfm/api/Caller;-><init>()V

    sput-object v0, Lcom/andrew/apollo/lastfm/api/Caller;->instance:Lcom/andrew/apollo/lastfm/api/Caller;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "http://ws.audioscrobbler.com/2.0/"

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Caller;->apiRootUrl:Ljava/lang/String;

    .line 79
    const-string v0, "Apollo"

    iput-object v0, p0, Lcom/andrew/apollo/lastfm/api/Caller;->userAgent:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private varargs buildPostBody(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "method"
    .parameter
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x3d

    const/16 v9, 0x26

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x64

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 237
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v8, "method="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 241
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 242
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/andrew/apollo/utils/StringUtilities;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    array-length v8, p3

    if-lez v8, :cond_0

    .line 246
    :cond_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .line 249
    .local v2, count:I
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_6

    aget-object v7, v0, v4

    .line 250
    .local v7, string:Ljava/lang/String;
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_4

    .end local v7           #string:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 252
    array-length v8, p3

    if-eq v2, v8, :cond_3

    .line 253
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_5

    .line 254
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 250
    .restart local v7       #string:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/andrew/apollo/utils/StringUtilities;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 256
    .end local v7           #string:Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 260
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/andrew/apollo/lastfm/api/Session;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 7
    .parameter "method"
    .parameter "apiKey"
    .parameter
    .parameter "session"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/andrew/apollo/lastfm/api/Session;",
            ")",
            "Lcom/andrew/apollo/lastfm/api/Result;"
        }
    .end annotation

    .prologue
    .line 126
    .local p3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 129
    .end local p3           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 132
    .local v1, inputStream:Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 134
    const-string v5, "api_key"

    invoke-interface {v2, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    if-eqz p4, :cond_0

    .line 136
    const-string v5, "sk"

    invoke-virtual {p4}, Lcom/andrew/apollo/lastfm/api/Session;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/andrew/apollo/lastfm/api/Caller;->openPostConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 140
    .local v4, urlConnection:Ljava/net/HttpURLConnection;
    invoke-direct {p0, v4}, Lcom/andrew/apollo/lastfm/api/Caller;->getInputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    .line 142
    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/andrew/apollo/lastfm/api/Result;->createHttpErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v5

    iput-object v5, p0, Lcom/andrew/apollo/lastfm/api/Caller;->lastResult:Lcom/andrew/apollo/lastfm/api/Result;

    .line 145
    iget-object v3, p0, Lcom/andrew/apollo/lastfm/api/Caller;->lastResult:Lcom/andrew/apollo/lastfm/api/Result;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v4           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Lcom/andrew/apollo/lastfm/api/CallException;

    invoke-direct {v5, v0}, Lcom/andrew/apollo/lastfm/api/CallException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/andrew/apollo/lastfm/api/Caller;->createResultFromInputStream(Ljava/io/InputStream;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v3

    .line 154
    .local v3, result:Lcom/andrew/apollo/lastfm/api/Result;
    iput-object v3, p0, Lcom/andrew/apollo/lastfm/api/Caller;->lastResult:Lcom/andrew/apollo/lastfm/api/Result;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 156
    .end local v3           #result:Lcom/andrew/apollo/lastfm/api/Result;
    :catch_1
    move-exception v0

    .line 157
    .restart local v0       #e:Ljava/io/IOException;
    new-instance v5, Lcom/andrew/apollo/lastfm/api/CallException;

    invoke-direct {v5, v0}, Lcom/andrew/apollo/lastfm/api/CallException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 158
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v5, Lcom/andrew/apollo/lastfm/api/CallException;

    invoke-direct {v5, v0}, Lcom/andrew/apollo/lastfm/api/CallException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private createResultFromInputStream(Ljava/io/InputStream;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 11
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/andrew/apollo/lastfm/api/Caller;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    new-instance v8, Lorg/xml/sax/InputSource;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, p1, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 212
    .local v0, document:Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 213
    .local v4, root:Lorg/w3c/dom/Element;
    const-string v7, "status"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, statusString:Ljava/lang/String;
    const-string v7, "ok"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v5, Lcom/andrew/apollo/lastfm/api/Result$Status;->OK:Lcom/andrew/apollo/lastfm/api/Result$Status;

    .line 215
    .local v5, status:Lcom/andrew/apollo/lastfm/api/Result$Status;
    :goto_0
    sget-object v7, Lcom/andrew/apollo/lastfm/api/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

    if-ne v5, v7, :cond_1

    .line 216
    const-string v7, "error"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 217
    .local v2, errorElement:Lorg/w3c/dom/Element;
    const-string v7, "code"

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, errorCode:I
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, message:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/andrew/apollo/lastfm/api/Result;->createRestErrorResult(ILjava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v7

    .line 221
    .end local v1           #errorCode:I
    .end local v2           #errorElement:Lorg/w3c/dom/Element;
    .end local v3           #message:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 214
    .end local v5           #status:Lcom/andrew/apollo/lastfm/api/Result$Status;
    :cond_0
    sget-object v5, Lcom/andrew/apollo/lastfm/api/Result$Status;->FAILED:Lcom/andrew/apollo/lastfm/api/Result$Status;

    goto :goto_0

    .line 221
    .restart local v5       #status:Lcom/andrew/apollo/lastfm/api/Result$Status;
    :cond_1
    invoke-static {v0}, Lcom/andrew/apollo/lastfm/api/Result;->createOkResult(Lorg/w3c/dom/Document;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v7

    goto :goto_1
.end method

.method private getInputStreamFromConnection(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 198
    .local v0, responseCode:I
    const/16 v1, 0x193

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 201
    :cond_1
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 205
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/andrew/apollo/lastfm/api/Caller;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/andrew/apollo/lastfm/api/Caller;->instance:Lcom/andrew/apollo/lastfm/api/Caller;

    return-object v0
.end method

.method private newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 228
    .local v0, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 229
    .end local v0           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private openPostConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 6
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 182
    const-string v4, "http://ws.audioscrobbler.com/2.0/"

    invoke-virtual {p0, v4}, Lcom/andrew/apollo/lastfm/api/Caller;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 183
    .local v2, urlConnection:Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 185
    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 186
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 187
    .local v0, outputStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 188
    .local v3, writer:Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, v4}, Lcom/andrew/apollo/lastfm/api/Caller;->buildPostBody(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, post:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 191
    return-object v2
.end method


# virtual methods
.method public call(Ljava/lang/String;Lcom/andrew/apollo/lastfm/api/Session;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "method"
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/andrew/apollo/lastfm/api/Session;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/andrew/apollo/lastfm/api/Result;"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/andrew/apollo/lastfm/api/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/andrew/apollo/lastfm/api/Session;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;Lcom/andrew/apollo/lastfm/api/Session;[Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 2
    .parameter "method"
    .parameter "session"
    .parameter "params"

    .prologue
    .line 105
    invoke-virtual {p2}, Lcom/andrew/apollo/lastfm/api/Session;->getApiKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/andrew/apollo/utils/StringUtilities;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/andrew/apollo/lastfm/api/Session;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "method"
    .parameter "apiKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/andrew/apollo/lastfm/api/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/andrew/apollo/lastfm/api/CallException;
        }
    .end annotation

    .prologue
    .line 101
    .local p3, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/andrew/apollo/lastfm/api/Session;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/andrew/apollo/lastfm/api/Result;
    .locals 1
    .parameter "method"
    .parameter "apiKey"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/andrew/apollo/lastfm/api/CallException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p3}, Lcom/andrew/apollo/utils/StringUtilities;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/andrew/apollo/lastfm/api/Caller;->call(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/andrew/apollo/lastfm/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, u:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 175
    .local v1, urlConnection:Ljava/net/HttpURLConnection;
    const-string v2, "User-Agent"

    const-string v3, "Apollo"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 177
    return-object v1
.end method
