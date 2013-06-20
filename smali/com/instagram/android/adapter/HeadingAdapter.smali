.class public Lcom/instagram/android/adapter/HeadingAdapter;
.super Ljava/lang/Object;
.source "HeadingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static bindView(Lcom/instagram/android/adapter/HeadingAdapter$Holder;Lcom/instagram/android/model/Heading;)V
    .locals 2
    .parameter "holder"
    .parameter "heading"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/adapter/HeadingAdapter$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/instagram/android/model/Heading;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->row_heading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/instagram/android/adapter/HeadingAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/HeadingAdapter$Holder;-><init>()V

    .line 23
    sget v0, Lcom/facebook/g;->row_heading_textview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/HeadingAdapter$Holder;->title:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    return-object v1
.end method
