.class public Lcom/instagram/android/adapter/row/PendingMediaRowAdapter;
.super Ljava/lang/Object;
.source "PendingMediaRowAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method public static bindView(Landroid/content/Context;Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;Lcom/instagram/android/model/PendingMedia;)V
    .locals 6
    .parameter "context"
    .parameter "holder"
    .parameter "media"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_0

    .line 43
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter;->stopValueAnimator(Landroid/widget/TextView;)V

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/instagram/android/model/PendingMedia;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    invoke-virtual {p2}, Lcom/instagram/android/model/PendingMedia;->getServerStatus()Lcom/instagram/android/model/PendingMedia$Status;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/PendingMedia$Status;->CONFIGURED:Lcom/instagram/android/model/PendingMedia$Status;

    if-eq v0, v1, :cond_4

    .line 49
    invoke-virtual {p2}, Lcom/instagram/android/model/PendingMedia;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    invoke-virtual {p2}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/instagram/android/model/PendingMedia;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->processing:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    .line 60
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter;->createValueAnimator(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 85
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->retryButton:Landroid/widget/Button;

    new-instance v1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$2;-><init>(Landroid/content/Context;Lcom/instagram/android/model/PendingMedia;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void

    .line 65
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 73
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->failed_to_upload:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->retryButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 78
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 79
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->done_exclamation:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private static createValueAnimator(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4
    .parameter "context"
    .parameter "textView"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 129
    sget v0, Lcom/facebook/k;->processing:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$ProcessingTextEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$ProcessingTextEvaluator;-><init>(Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 136
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 137
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 138
    new-instance v1, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$3;

    invoke-direct {v1, p1}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$3;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static newView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .parameter "context"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    sget v1, Lcom/facebook/h;->row_pending_media:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;

    invoke-direct {v2}, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;-><init>()V

    .line 106
    sget v0, Lcom/facebook/g;->row_pending_media_image_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->imageView:Landroid/widget/ImageView;

    .line 107
    sget v0, Lcom/facebook/g;->row_pending_media_retry_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->retryButton:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/facebook/g;->row_pending_media_cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->cancelButton:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/facebook/g;->row_pending_media_progress_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->progressBar:Landroid/widget/ProgressBar;

    .line 110
    sget v0, Lcom/facebook/g;->row_pending_media_text_view_status:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/instagram/android/adapter/row/PendingMediaRowAdapter$Holder;->statusText:Landroid/widget/TextView;

    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    return-object v1
.end method

.method private static stopValueAnimator(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 122
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method
