.class public Lcom/instagram/android/adapter/row/SimpleTextRowAdapter;
.super Ljava/lang/Object;
.source "SimpleTextRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;Lcom/instagram/android/model/menu/TextItem;)V
    .locals 2
    .parameter "tag"
    .parameter "item"

    .prologue
    .line 28
    #getter for: Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;->mTextView:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;->access$000(Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/android/model/menu/TextItem;->getStringResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    return-void
.end method

.method public static newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 18
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;-><init>()V

    .line 21
    sget v0, Lcom/facebook/g;->row_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #setter for: Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;->mTextView:Landroid/widget/TextView;
    invoke-static {v2, v0}, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;->access$002(Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 24
    return-object v1
.end method
