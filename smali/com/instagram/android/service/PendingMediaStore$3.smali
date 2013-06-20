.class Lcom/instagram/android/service/PendingMediaStore$3;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "PendingMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/model/PendingMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/service/PendingMediaStore;


# direct methods
.method constructor <init>(Lcom/instagram/android/service/PendingMediaStore;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/instagram/android/service/PendingMediaStore$3;->this$0:Lcom/instagram/android/service/PendingMediaStore;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
