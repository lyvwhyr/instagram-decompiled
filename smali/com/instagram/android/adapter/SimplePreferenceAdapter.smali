.class public Lcom/instagram/android/adapter/SimplePreferenceAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "SimplePreferenceAdapter.java"


# static fields
.field private static final VIEW_TYPE_BOTTOM:I = 0x2

.field private static final VIEW_TYPE_BOTTOM_NO_PADDING:I = 0x9

.field private static final VIEW_TYPE_HEADER:I = 0x4

.field private static final VIEW_TYPE_NORMAL:I = 0x3

.field private static final VIEW_TYPE_SEPARATOR:I = 0x7

.field private static final VIEW_TYPE_STANDALONE:I = 0x5

.field private static final VIEW_TYPE_STANDALONE_NO_TOP_PADDING:I = 0x6

.field private static final VIEW_TYPE_TEXT:I = 0x8

.field private static final VIEW_TYPE_TOP:I = 0x0

.field private static final VIEW_TYPE_TOP_NO_TOP_PADDING:I = 0x1


# instance fields
.field private mShowDialogView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mShowDialogView:Z

    .line 36
    return-void
.end method

.method private isHeader(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/model/menu/HeaderItem;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/model/menu/SeparatorItem;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDialogMenuItems([Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "items"

    .prologue
    const/4 v1, 0x0

    .line 102
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 103
    iget-object v4, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mObjects:Ljava/util/List;

    new-instance v5, Lcom/instagram/android/model/menu/MenuItem;

    invoke-direct {v5, v3, v1}, Lcom/instagram/android/model/menu/MenuItem;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 3
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 67
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/menu/MenuItem;

    iget-boolean v2, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mShowDialogView:Z

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->bindView(Landroid/view/View;Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter$Holder;Lcom/instagram/android/model/menu/MenuItem;Z)V

    .line 89
    :goto_0
    :pswitch_1
    return-void

    .line 69
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/SimpleHeaderRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/menu/HeaderItem;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/row/SimpleHeaderRowAdapter;->bindView(Lcom/instagram/android/adapter/row/SimpleHeaderRowAdapter$Holder;Lcom/instagram/android/model/menu/HeaderItem;)V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;

    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/menu/TextItem;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter;->bindView(Lcom/instagram/android/adapter/row/SimpleTextRowAdapter$Holder;Lcom/instagram/android/model/menu/TextItem;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/model/menu/HeaderItem;

    if-eqz v1, :cond_1

    .line 122
    const/4 v0, 0x4

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/model/menu/SeparatorItem;

    if-eqz v1, :cond_2

    .line 124
    const/4 v0, 0x7

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/instagram/android/model/menu/TextItem;

    if-eqz v1, :cond_3

    .line 126
    const/16 v0, 0x8

    goto :goto_0

    .line 127
    :cond_3
    if-nez p1, :cond_6

    .line 129
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getCount()I

    move-result v1

    if-eq v1, v0, :cond_4

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_6
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_7

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    .line 133
    :cond_8
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_9

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 136
    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    .line 137
    :cond_a
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/model/menu/TextItem;

    if-eqz v0, :cond_b

    .line 138
    const/16 v0, 0x9

    goto :goto_0

    .line 140
    :cond_b
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 116
    const/16 v0, 0xa

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/instagram/android/model/menu/TextItem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, p2}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 42
    :pswitch_1
    invoke-static {p1, v2}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newStandaloneView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-static {p1, v1}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newStandaloneView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-static {p1, v1}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newTopView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_4
    invoke-static {p1, v2}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newTopView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 50
    :pswitch_5
    invoke-static {p1, v2}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newBottomView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_6
    invoke-static {p1, v1}, Lcom/instagram/android/adapter/row/SimpleMenuItemRowAdapter;->newBottomView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 54
    :pswitch_7
    invoke-static {p1, p3}, Lcom/instagram/android/adapter/row/SimpleHeaderRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_8
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 58
    :pswitch_9
    invoke-static {p1, p3}, Lcom/instagram/android/adapter/row/SimpleTextRowAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public setItems(Ljava/util/Collection;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 110
    iget-object v0, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-virtual {p0}, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->notifyDataSetChanged()V

    .line 112
    return-void
.end method

.method public showDialogView(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/instagram/android/adapter/SimplePreferenceAdapter;->mShowDialogView:Z

    .line 156
    return-void
.end method
