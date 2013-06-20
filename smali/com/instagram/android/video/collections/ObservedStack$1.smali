.class Lcom/instagram/android/video/collections/ObservedStack$1;
.super Ljava/lang/Object;
.source "ObservedStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCurrentItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/instagram/android/video/collections/ObservedStack;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/collections/ObservedStack;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    .local p0, this:Lcom/instagram/android/video/collections/ObservedStack$1;,"Lcom/instagram/android/video/collections/ObservedStack.1;"
    iput-object p1, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->this$0:Lcom/instagram/android/video/collections/ObservedStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->this$0:Lcom/instagram/android/video/collections/ObservedStack;

    #getter for: Lcom/instagram/android/video/collections/ObservedStack;->mLinkedList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/instagram/android/video/collections/ObservedStack;->access$000(Lcom/instagram/android/video/collections/ObservedStack;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mCurrentItem:Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mCurrentItem:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 62
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->this$0:Lcom/instagram/android/video/collections/ObservedStack;

    #getter for: Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;
    invoke-static {v0}, Lcom/instagram/android/video/collections/ObservedStack;->access$100(Lcom/instagram/android/video/collections/ObservedStack;)Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->this$0:Lcom/instagram/android/video/collections/ObservedStack;

    #getter for: Lcom/instagram/android/video/collections/ObservedStack;->mStackObserver:Lcom/instagram/android/video/collections/ObservedStack$StackObserver;
    invoke-static {v0}, Lcom/instagram/android/video/collections/ObservedStack;->access$100(Lcom/instagram/android/video/collections/ObservedStack;)Lcom/instagram/android/video/collections/ObservedStack$StackObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/video/collections/ObservedStack$1;->mCurrentItem:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/instagram/android/video/collections/ObservedStack$StackObserver;->onItemRemoved(Ljava/lang/Object;)V

    .line 65
    :cond_0
    return-void
.end method
