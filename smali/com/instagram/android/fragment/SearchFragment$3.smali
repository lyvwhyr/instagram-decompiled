.class Lcom/instagram/android/fragment/SearchFragment$3;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchFragment$3;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$3;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->getMode()Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$3;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    #getter for: Lcom/instagram/android/fragment/SearchFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchFragment;->access$100(Lcom/instagram/android/fragment/SearchFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$3;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    #calls: Lcom/instagram/android/fragment/SearchFragment;->getCompositeFragment()Lcom/instagram/android/fragment/CompositeSearchFragment;
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchFragment;->access$200(Lcom/instagram/android/fragment/SearchFragment;)Lcom/instagram/android/fragment/CompositeSearchFragment;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/CompositeSearchFragment;->showFragment(Lcom/instagram/android/fragment/SearchFragment$SearchMode;)V

    goto :goto_0
.end method
