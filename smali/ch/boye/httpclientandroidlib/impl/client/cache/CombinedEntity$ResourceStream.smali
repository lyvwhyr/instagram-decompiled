.class Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;
.super Ljava/io/FilterInputStream;
.source "CombinedEntity.java"


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter "in"

    .prologue
    .line 90
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;

    .line 91
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;

    #calls: Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity$ResourceStream;->this$0:Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;

    #calls: Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->dispose()V
    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->access$000(Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;)V

    throw v0
.end method
