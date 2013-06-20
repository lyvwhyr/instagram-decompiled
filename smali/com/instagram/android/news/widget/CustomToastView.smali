.class Lcom/instagram/android/news/widget/CustomToastView;
.super Landroid/widget/LinearLayout;
.source "CustomToastView.java"


# instance fields
.field private mCommentsIcon:Landroid/view/View;

.field private mCommentsTextView:Landroid/widget/TextView;

.field private mItemPaddingRight:I

.field private mLikesIcon:Landroid/view/View;

.field private mLikesTextView:Landroid/widget/TextView;

.field private mRelationshipsIcon:Landroid/view/View;

.field private mRelationshipsTextView:Landroid/widget/TextView;

.field private mTagsIcon:Landroid/view/View;

.field private mTagsTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/instagram/android/news/widget/CustomToastView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/instagram/android/news/widget/CustomToastView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lcom/instagram/android/news/widget/CustomToastView;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setGravity(I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setOrientation(I)V

    .line 49
    sget v0, Lcom/facebook/f;->notification_toast_bg:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/news/widget/CustomToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->view_custom_toast:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 53
    sget v0, Lcom/facebook/g;->toast_inbox_textview_comments:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mCommentsTextView:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/facebook/g;->toast_inbox_textview_likes:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mLikesTextView:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/facebook/g;->toast_inbox_textview_relationships:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsTextView:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/facebook/g;->toast_inbox_textview_tags:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mTagsTextView:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/facebook/g;->toast_inbox_icon_comments:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mCommentsIcon:Landroid/view/View;

    .line 59
    sget v0, Lcom/facebook/g;->toast_inbox_icon_likes:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mLikesIcon:Landroid/view/View;

    .line 60
    sget v0, Lcom/facebook/g;->toast_inbox_icon_relationships:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsIcon:Landroid/view/View;

    .line 61
    sget v0, Lcom/facebook/g;->toast_inbox_icon_tags:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/news/widget/CustomToastView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mTagsIcon:Landroid/view/View;

    .line 63
    invoke-virtual {p0}, Lcom/instagram/android/news/widget/CustomToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->toast_item_padding_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mItemPaddingRight:I

    .line 64
    return-void
.end method

.method private setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V
    .locals 2
    .parameter "textView"
    .parameter "iconView"
    .parameter "count"
    .parameter "addPadding"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 84
    if-nez p3, :cond_0

    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    if-eqz p4, :cond_1

    iget v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mItemPaddingRight:I

    :goto_1
    invoke-static {p1, v0}, Lcom/instagram/util/ViewUtil;->setRightPadding(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/news/widget/CustomToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->dpToPx(Landroid/content/Context;I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1
.end method


# virtual methods
.method public setCounts(IIII)V
    .locals 5
    .parameter "comments"
    .parameter "likes"
    .parameter "relationships"
    .parameter "tags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v3, p0, Lcom/instagram/android/news/widget/CustomToastView;->mCommentsTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/instagram/android/news/widget/CustomToastView;->mCommentsIcon:Landroid/view/View;

    if-gtz p2, :cond_0

    if-gtz p3, :cond_0

    if-lez p4, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V

    .line 70
    iget-object v3, p0, Lcom/instagram/android/news/widget/CustomToastView;->mLikesTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/instagram/android/news/widget/CustomToastView;->mLikesIcon:Landroid/view/View;

    if-gtz p3, :cond_1

    if-lez p4, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    invoke-direct {p0, v3, v4, p2, v0}, Lcom/instagram/android/news/widget/CustomToastView;->setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V

    .line 72
    if-lez p1, :cond_5

    if-lez p2, :cond_5

    if-lez p4, :cond_5

    .line 75
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsIcon:Landroid/view/View;

    if-lez p4, :cond_4

    :goto_2
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/instagram/android/news/widget/CustomToastView;->setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V

    .line 80
    :goto_3
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mTagsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/instagram/android/news/widget/CustomToastView;->mTagsIcon:Landroid/view/View;

    invoke-direct {p0, v0, v2, p4, v1}, Lcom/instagram/android/news/widget/CustomToastView;->setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V

    .line 81
    return-void

    :cond_2
    move v0, v1

    .line 67
    goto :goto_0

    :cond_3
    move v0, v1

    .line 70
    goto :goto_1

    :cond_4
    move v2, v1

    .line 75
    goto :goto_2

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/instagram/android/news/widget/CustomToastView;->mRelationshipsIcon:Landroid/view/View;

    if-lez p4, :cond_6

    :goto_4
    invoke-direct {p0, v0, v3, p3, v2}, Lcom/instagram/android/news/widget/CustomToastView;->setSectionText(Landroid/widget/TextView;Landroid/view/View;IZ)V

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4
.end method
