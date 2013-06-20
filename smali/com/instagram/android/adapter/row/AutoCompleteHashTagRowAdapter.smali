.class public Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter;
.super Ljava/lang/Object;
.source "AutoCompleteHashTagRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;Ljava/lang/String;)V
    .locals 4
    .parameter "tag"
    .parameter "item"

    .prologue
    .line 24
    #getter for: Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->name:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->access$000(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    #getter for: Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->count:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->access$100(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 15
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_autocomplete_hashtag:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;-><init>()V

    .line 17
    sget v0, Lcom/facebook/g;->row_hashtag_textview_tag_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->name:Landroid/widget/TextView;
    invoke-static {v2, v0}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->access$002(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 18
    sget v0, Lcom/facebook/g;->row_hashtag_textview_media_count:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->count:Landroid/widget/TextView;
    invoke-static {v2, v0}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;->access$102(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    return-object v1
.end method
