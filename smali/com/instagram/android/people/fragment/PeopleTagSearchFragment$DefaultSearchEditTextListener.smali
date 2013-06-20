.class Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;
.super Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;
.source "PeopleTagSearchFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;-><init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    return-void
.end method


# virtual methods
.method public onSearchSubmitted(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/String;)V
    .locals 1
    .parameter "searchEditText"
    .parameter "query"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-virtual {v0, p2}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->performSearch(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onSearchTextChanged(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "editText"
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mServerSearchResultsVisible:Z
    invoke-static {v0, v1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$202(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Z)Z

    .line 196
    invoke-virtual {p1}, Lcom/instagram/android/widget/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mAdapter:Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;
    invoke-static {v1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$300(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/people/widget/PeopleTaggingUserListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->showSearchFooter(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$400(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->showListView()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$500(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideListView()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$600(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    .line 203
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #calls: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->hideSearchFooter()V
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$700(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V

    goto :goto_0
.end method
