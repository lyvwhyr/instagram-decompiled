.class Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;
.super Ljava/lang/Object;
.source "PeopleTagSearchFilter.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Lcom/instagram/android/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/widget/PeopleTagSearchFilter;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagSearchFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;->this$0:Lcom/instagram/android/people/widget/PeopleTagSearchFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/instagram/android/model/User;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;->this$0:Lcom/instagram/android/people/widget/PeopleTagSearchFilter;

    #getter for: Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->mCollection:Lcom/instagram/android/people/model/PeopleTagCollection;
    invoke-static {v0}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter;->access$000(Lcom/instagram/android/people/widget/PeopleTagSearchFilter;)Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/model/PeopleTagCollection;->containsUser(Lcom/instagram/android/model/User;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Lcom/instagram/android/model/User;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/widget/PeopleTagSearchFilter$1;->apply(Lcom/instagram/android/model/User;)Z

    move-result v0

    return v0
.end method
