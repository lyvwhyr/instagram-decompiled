.class final Lcom/instagram/android/widget/ListUtil$1;
.super Ljava/lang/Object;
.source "ListUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$isLoading:Z

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/instagram/android/widget/ListUtil$1;->val$parentView:Landroid/view/View;

    iput-boolean p2, p0, Lcom/instagram/android/widget/ListUtil$1;->val$isLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/widget/ListUtil$1;->val$parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 18
    iget-boolean v0, p0, Lcom/instagram/android/widget/ListUtil$1;->val$isLoading:Z

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/instagram/android/widget/ListUtil$1;->val$parentView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->listview_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 20
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/widget/ListUtil$1;->val$parentView:Landroid/view/View;

    sget v1, Lcom/facebook/g;->listview_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
