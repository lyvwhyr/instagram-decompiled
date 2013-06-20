.class public Lcom/instagram/android/people/model/PeopleTagCollection;
.super Ljava/util/ArrayList;
.source "PeopleTagCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/instagram/android/people/model/PeopleTag;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, peopleTags:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/people/model/PeopleTag;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    return-void
.end method


# virtual methods
.method public add(ILcom/instagram/android/people/model/PeopleTag;)V
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    check-cast p2, Lcom/instagram/android/people/model/PeopleTag;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/instagram/android/people/model/PeopleTagCollection;->add(ILcom/instagram/android/people/model/PeopleTag;)V

    return-void
.end method

.method public add(Lcom/instagram/android/people/model/PeopleTag;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 30
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/instagram/android/people/model/PeopleTagCollection;->mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/instagram/android/people/model/PeopleTagCollection;->mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;

    invoke-interface {v1, p1}, Lcom/instagram/android/people/model/PeopleTagCollection$Listener;->onTagAdded(Lcom/instagram/android/people/model/PeopleTag;)V

    .line 34
    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/instagram/android/people/model/PeopleTag;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/model/PeopleTagCollection;->add(Lcom/instagram/android/people/model/PeopleTag;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/instagram/android/people/model/PeopleTag;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/android/people/model/PeopleTag;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/instagram/android/people/model/PeopleTag;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsUser(Lcom/instagram/android/model/User;)Z
    .locals 3
    .parameter "user"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/instagram/android/people/model/PeopleTagCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    .line 82
    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTag;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(I)Lcom/instagram/android/people/model/PeopleTag;
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/instagram/android/people/model/PeopleTagCollection;->remove(I)Lcom/instagram/android/people/model/PeopleTag;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 39
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/instagram/android/people/model/PeopleTagCollection;->mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/instagram/android/people/model/PeopleTagCollection;->mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;

    check-cast p1, Lcom/instagram/android/people/model/PeopleTag;

    .end local p1
    invoke-interface {v1, p1}, Lcom/instagram/android/people/model/PeopleTagCollection$Listener;->onTagRemoved(Lcom/instagram/android/people/model/PeopleTag;)V

    .line 43
    :cond_0
    return v0
.end method

.method protected removeRange(II)V
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setListener(Lcom/instagram/android/people/model/PeopleTagCollection$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/instagram/android/people/model/PeopleTagCollection;->mListener:Lcom/instagram/android/people/model/PeopleTagCollection$Listener;

    .line 78
    return-void
.end method
