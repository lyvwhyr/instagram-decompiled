.class Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

.field final synthetic val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    .locals 3
    .parameter "timeout"
    .parameter "tunit"

    .prologue
    .line 190
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->val$route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->getConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object v0

    return-object v0
.end method
