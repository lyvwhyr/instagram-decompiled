.class Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;
.super Ljava/lang/Object;
.source "SimpleProxyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/SimpleProxyView;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/SimpleProxyView;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;->this$0:Lcom/instagram/android/widget/SimpleProxyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;->this$0:Lcom/instagram/android/widget/SimpleProxyView;

    #getter for: Lcom/instagram/android/widget/SimpleProxyView;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/instagram/android/widget/SimpleProxyView;->access$000(Lcom/instagram/android/widget/SimpleProxyView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 61
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;->this$0:Lcom/instagram/android/widget/SimpleProxyView;

    #getter for: Lcom/instagram/android/widget/SimpleProxyView;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/instagram/android/widget/SimpleProxyView;->access$100(Lcom/instagram/android/widget/SimpleProxyView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;->this$0:Lcom/instagram/android/widget/SimpleProxyView;

    #getter for: Lcom/instagram/android/widget/SimpleProxyView;->mProxy:Z
    invoke-static {v0}, Lcom/instagram/android/widget/SimpleProxyView;->access$200(Lcom/instagram/android/widget/SimpleProxyView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/instagram/android/widget/SimpleProxyView$ProxyOnClickListener;->this$0:Lcom/instagram/android/widget/SimpleProxyView;

    #getter for: Lcom/instagram/android/widget/SimpleProxyView;->mListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/instagram/android/widget/SimpleProxyView;->access$100(Lcom/instagram/android/widget/SimpleProxyView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 67
    :cond_1
    return-void
.end method
