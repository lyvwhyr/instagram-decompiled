.class public Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;
.super Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;
.source "SearchFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/SearchFragment;


# direct methods
.method protected constructor <init>(Lcom/instagram/android/fragment/SearchFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-direct {p0}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchSubmitted(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/String;)V
    .locals 1
    .parameter "searchEditText"
    .parameter "query"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v0, p2}, Lcom/instagram/android/fragment/SearchFragment;->performSearch(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onSearchTextChanged(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "editText"
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/instagram/android/widget/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/instagram/android/fragment/SearchFragment;->mSearchString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/instagram/android/fragment/SearchFragment;->access$302(Lcom/instagram/android/fragment/SearchFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 257
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 258
    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 259
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    sget-object v2, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_USERS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    #calls: Lcom/instagram/android/fragment/SearchFragment;->switchSearchMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V
    invoke-static {v1, v2, p2}, Lcom/instagram/android/fragment/SearchFragment;->access$400(Lcom/instagram/android/fragment/SearchFragment;Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/SearchFragment;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 268
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    #calls: Lcom/instagram/android/fragment/SearchFragment;->showSearchFooter(Ljava/lang/CharSequence;)V
    invoke-static {v1, v0}, Lcom/instagram/android/fragment/SearchFragment;->access$500(Lcom/instagram/android/fragment/SearchFragment;Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/instagram/android/widget/SearchEditText$SearchEditTextListener;->onSearchTextChanged(Lcom/instagram/android/widget/SearchEditText;Ljava/lang/CharSequence;III)V

    .line 275
    return-void

    .line 260
    :cond_1
    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 261
    iget-object v1, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    sget-object v2, Lcom/instagram/android/fragment/SearchFragment$SearchMode;->MODE_TAGS:Lcom/instagram/android/fragment/SearchFragment$SearchMode;

    #calls: Lcom/instagram/android/fragment/SearchFragment;->switchSearchMode(Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V
    invoke-static {v1, v2, p2}, Lcom/instagram/android/fragment/SearchFragment;->access$400(Lcom/instagram/android/fragment/SearchFragment;Lcom/instagram/android/fragment/SearchFragment$SearchMode;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/SearchFragment$DefaultSearchEditTextListener;->this$0:Lcom/instagram/android/fragment/SearchFragment;

    #calls: Lcom/instagram/android/fragment/SearchFragment;->hideSearchFooter()V
    invoke-static {v0}, Lcom/instagram/android/fragment/SearchFragment;->access$600(Lcom/instagram/android/fragment/SearchFragment;)V

    goto :goto_1
.end method
