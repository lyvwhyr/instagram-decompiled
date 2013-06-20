.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

.field final synthetic val$listener:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;->val$listener:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "mediaGroup"
    .parameter "event"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 124
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Builder$1;->val$listener:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;

    invoke-interface {v1, v0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;->onTouch(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
