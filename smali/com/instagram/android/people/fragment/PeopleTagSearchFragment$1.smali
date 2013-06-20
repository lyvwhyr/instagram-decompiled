.class Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;
.super Ljava/lang/Object;
.source "PeopleTagSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    iget-object v1, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;
    invoke-static {v1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$100(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/widget/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/widget/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->performSearch(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    #getter for: Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->mSearchEditText:Lcom/instagram/android/widget/SearchEditText;
    invoke-static {v0}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->access$100(Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;)Lcom/instagram/android/widget/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/SearchEditText;->hideSoftKeyboard()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment$1;->this$0:Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;

    invoke-virtual {v0, p1, p3}, Lcom/instagram/android/people/fragment/PeopleTagSearchFragment;->handleItemClick(Landroid/widget/AdapterView;I)V

    goto :goto_0
.end method
