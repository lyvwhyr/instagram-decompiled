.class public Lcom/instagram/twitter/TwitterXAuth;
.super Ljava/lang/Object;
.source "TwitterXAuth.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TwitterXAuth"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/instagram/twitter/TwitterXAuth;->toHashMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asyncConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/twitter/TwitterXAuth$Listener;)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "listener"

    .prologue
    .line 41
    new-instance v0, Lcom/instagram/twitter/TwitterXAuth$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/instagram/twitter/TwitterXAuth$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/instagram/twitter/TwitterXAuth$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/instagram/twitter/TwitterXAuth$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 109
    return-void
.end method

.method private static toHashMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/NameValuePair;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, x:Ljava/util/List;,"Ljava/util/List<Lch/boye/httpclientandroidlib/NameValuePair;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/NameValuePair;

    .line 114
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    return-object v1
.end method
