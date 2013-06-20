.class Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/facebook/content/b;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/SearchFragment;Lcom/instagram/android/fragment/SearchFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;-><init>(Lcom/instagram/android/fragment/SearchFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/content/c;)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "receiver"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    iget-object v0, v0, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/SearchFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$UpdateSearchHistoryActionReceiver;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    iget-object v1, v1, Lcom/instagram/android/fragment/SearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 334
    :cond_0
    return-void
.end method
