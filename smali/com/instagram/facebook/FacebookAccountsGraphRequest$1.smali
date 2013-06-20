.class Lcom/instagram/facebook/FacebookAccountsGraphRequest$1;
.super Ljava/lang/Object;
.source "FacebookAccountsGraphRequest.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/instagram/android/model/FacebookPostingAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/facebook/FacebookAccountsGraphRequest;


# direct methods
.method constructor <init>(Lcom/instagram/facebook/FacebookAccountsGraphRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/instagram/facebook/FacebookAccountsGraphRequest$1;->this$0:Lcom/instagram/facebook/FacebookAccountsGraphRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/instagram/android/model/FacebookPostingAccount;Lcom/instagram/android/model/FacebookPostingAccount;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/instagram/android/model/FacebookPostingAccount;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/android/model/FacebookPostingAccount;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p1, Lcom/instagram/android/model/FacebookPostingAccount;

    .end local p1
    check-cast p2, Lcom/instagram/android/model/FacebookPostingAccount;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/facebook/FacebookAccountsGraphRequest$1;->compare(Lcom/instagram/android/model/FacebookPostingAccount;Lcom/instagram/android/model/FacebookPostingAccount;)I

    move-result v0

    return v0
.end method
