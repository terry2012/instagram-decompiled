.class public Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;
.super Loauth/signpost/AbstractOAuthProvider;
.source "CommonsHttpOAuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"
    .parameter "httpClient"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Loauth/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p4, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 50
    return-void
.end method


# virtual methods
.method protected closeConnection(Loauth/signpost/http/HttpRequest;Loauth/signpost/http/HttpResponse;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-interface {p2}, Loauth/signpost/http/HttpResponse;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected createRequest(Ljava/lang/String;)Loauth/signpost/http/HttpRequest;
    .locals 2
    .parameter "endpointUrl"

    .prologue
    .line 58
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Loauth/signpost/commonshttp/HttpRequestAdapter;

    invoke-direct {v1, v0}, Loauth/signpost/commonshttp/HttpRequestAdapter;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v1
.end method

.method protected sendRequest(Loauth/signpost/http/HttpRequest;)Loauth/signpost/http/HttpResponse;
    .locals 2
    .parameter "request"

    .prologue
    .line 64
    iget-object v1, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1}, Loauth/signpost/http/HttpRequest;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 65
    new-instance v1, Loauth/signpost/commonshttp/HttpResponseAdapter;

    invoke-direct {v1, v0}, Loauth/signpost/commonshttp/HttpResponseAdapter;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "httpClient"

    .prologue
    .line 53
    iput-object p1, p0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 54
    return-void
.end method
