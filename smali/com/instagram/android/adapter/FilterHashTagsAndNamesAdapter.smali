.class public Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;
.super Lcom/instagram/android/adapter/EnhancedArrayAdapter;
.source "FilterHashTagsAndNamesAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# static fields
.field private static final TYPE_HASHTAG:I = 0x0

.field private static final TYPE_USER:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilter:Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

.field private mMedia:Lcom/instagram/android/model/Media;

.field private mValues:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter "context"
    .parameter "media"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/EnhancedArrayAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mMedia:Lcom/instagram/android/model/Media;

    .line 34
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 2
    .parameter "v"
    .parameter "context"
    .parameter "position"

    .prologue
    .line 75
    invoke-virtual {p0, p3}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter;->bindView(Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter$Holder;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/model/User;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter;->bindView(Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter$Holder;Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mFilter:Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mMedia:Lcom/instagram/android/model/Media;

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    iget-object v1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mMedia:Lcom/instagram/android/model/Media;

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;-><init>(Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;Lcom/instagram/android/model/Media;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mFilter:Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mFilter:Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    invoke-direct {v0, p0}, Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;-><init>(Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;)V

    iput-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mFilter:Lcom/instagram/android/adapter/filter/HashtagAndUsernameCompositeFilter;

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->getItemViewType(I)I

    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/User;

    invoke-virtual {v0}, Lcom/instagram/android/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x2

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 66
    :pswitch_0
    invoke-static {p1}, Lcom/instagram/android/adapter/row/AutoCompleteHashTagRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-static {p1}, Lcom/instagram/android/adapter/row/AutoCompleteUserRowAdapter;->newView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;->mValues:Ljava/util/ArrayList;

    .line 113
    return-void
.end method
