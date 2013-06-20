.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 0
    .parameter
    .parameter "entry"
    .parameter "route"

    .prologue
    .line 415
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    .line 416
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 417
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->markReusable()V

    .line 418
    iput-object p3, p2, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    .line 419
    return-void
.end method
