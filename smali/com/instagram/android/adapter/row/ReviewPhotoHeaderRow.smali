.class public Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow;
.super Ljava/lang/Object;
.source "ReviewPhotoHeaderRow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;)V
    .locals 7
    .parameter "context"
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeAdded()I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    .line 29
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/facebook/k;->please_select_the_photos_deselect_link:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/k;->please_select_the_photos:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 33
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v6, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$1;

    invoke-direct {v6, v3, v1}, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$1;-><init>(ZZ)V

    .line 56
    iget-object v1, p1, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;->textView:Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 63
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v5, v6, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_0
    move v1, v3

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/facebook/k;->please_select_the_photos_select_link:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_review_photo_map:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    new-instance v2, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;-><init>()V

    .line 74
    sget v0, Lcom/facebook/g;->row_review_photo_map_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/ReviewPhotoHeaderRow$Holder;->textView:Landroid/widget/TextView;

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    return-object v1
.end method
