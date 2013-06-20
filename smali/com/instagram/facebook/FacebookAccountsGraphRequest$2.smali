.class Lcom/instagram/facebook/FacebookAccountsGraphRequest$2;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "FacebookAccountsGraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/instagram/android/model/FacebookPostingAccount;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/facebook/FacebookAccountsGraphRequest;


# direct methods
.method constructor <init>(Lcom/instagram/facebook/FacebookAccountsGraphRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/facebook/FacebookAccountsGraphRequest$2;->this$0:Lcom/instagram/facebook/FacebookAccountsGraphRequest;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    return-void
.end method
