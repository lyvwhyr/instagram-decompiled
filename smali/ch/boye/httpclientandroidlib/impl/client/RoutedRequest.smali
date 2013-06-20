.class public Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

.field protected final route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 0
    .parameter "req"
    .parameter "route"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    .line 54
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    .line 55
    return-void
.end method


# virtual methods
.method public final getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->request:Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    return-object v0
.end method

.method public final getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-object v0
.end method
