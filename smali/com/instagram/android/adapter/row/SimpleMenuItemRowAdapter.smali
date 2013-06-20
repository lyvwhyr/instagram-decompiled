.class public Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;
.super Ljava/lang/Object;
.source "SimpleMenuItemRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static bindView(Landroid/view/View;Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;Lcom/instagram/android/model/menu/MenuItem;Z)V
    .locals 4
    .parameter "v"
    .parameter "holder"
    .parameter "item"
    .parameter "showDialogView"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->getProvidedString()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->getProvidedString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    iget-object v3, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->disclosure:Landroid/view/View;

    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->isDisclosure()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->hasCheckBox()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 28
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    :cond_2
    return-void

    .line 24
    :cond_3
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/menu/MenuItem;->getStringResId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 26
    goto :goto_1

    .line 32
    :cond_5
    iget-object v0, p1, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method public static newBottomView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "bottomPadding"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-static {p0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->form_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    sget v0, Lcom/facebook/f;->input_bottom:I

    invoke-static {v3, v0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->setBackgroundDrawable(Landroid/view/View;I)V

    .line 74
    return-object v3

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0
.end method

.method public static newStandaloneView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "topPadding"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->form_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    sget v0, Lcom/facebook/f;->input_single:I

    invoke-static {v2, v0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->setBackgroundDrawable(Landroid/view/View;I)V

    .line 58
    return-object v2

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newTopView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "topPadding"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-static {p0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->form_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 64
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    sget v0, Lcom/facebook/f;->input_top:I

    invoke-static {v3, v0}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->setBackgroundDrawable(Landroid/view/View;I)V

    .line 66
    return-object v3

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_simple_text:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    new-instance v2, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;-><init>()V

    .line 46
    sget v0, Lcom/facebook/g;->row_simple_text_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->textView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/facebook/g;->row_simple_text_disclosure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->disclosure:Landroid/view/View;

    .line 48
    sget v0, Lcom/facebook/g;->row_simple_text_checkbox:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;->checkBox:Landroid/widget/CheckBox;

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    return-object v1
.end method

.method private static setBackgroundDrawable(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "resId"

    .prologue
    .line 78
    sget v0, Lcom/facebook/g;->row_simple_text_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method
