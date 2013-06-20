.class public Lcom/instagram/android/video/collections/ObservedStack;
.super Ljava/lang/Object;
.source "ObservedStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mLinkedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/android/video/collections/ObservedStack$StackObserver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/video/collections/ObservedStack;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/video/collections/ObservedStack;)Lcom/instagram/android/video/collections/ObservedStack$StackObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/instagram/android/video/collections/ObservedStack;,"Lcom/instagram/android/video/collections/ObservedStack<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    invoke-interface {v1, p1}, Lcom/instagram/android/video/collections/ObservedStack$StackObserver;->onItemAdded(Ljava/lang/Object;)V

    .line 19
    :cond_0
    return v0
.end method

.method protected getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/instagram/android/video/collections/ObservedStack$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/video/collections/ObservedStack$1;-><init>(Lcom/instagram/android/video/collections/ObservedStack;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/instagram/android/video/collections/ObservedStack;,"Lcom/instagram/android/video/collections/ObservedStack<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    invoke-interface {v1, p1}, Lcom/instagram/android/video/collections/ObservedStack$StackObserver;->onItemRemoved(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return v0
.end method

.method public setStackObserver(Lcom/instagram/android/video/collections/ObservedStack$StackObserver;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/android/video/collections/ObservedStack$StackObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/instagram/android/video/collections/ObservedStack;,"Lcom/instagram/android/video/collections/ObservedStack<TT;>;"
    .local p1, stackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;,"Lcom/instagram/android/video/collections/ObservedStack$StackObserver<TT;>;"
    iput-object p1, p0, Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    .line 39
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
