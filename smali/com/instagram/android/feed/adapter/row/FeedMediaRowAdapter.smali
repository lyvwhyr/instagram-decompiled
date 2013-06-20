.class public Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mApplicationContext:Landroid/content/Context;

.field private final mContext:Landroid/content/Context;

.field private mConversionTrackableSource:Lcom/instagram/android/fragment/ConversionTrackable;

.field private mFeedAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

.field private mFragmentManager:Landroid/support/v4/app/p;

.field private mLoaderManager:Landroid/support/v4/app/af;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mApplicationContext:Landroid/content/Context;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/p;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/support/v4/app/p;)Landroid/support/v4/app/p;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/af;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/support/v4/app/af;)Landroid/support/v4/app/af;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    return-object p1
.end method

.method static synthetic access$302(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Lcom/instagram/android/fragment/ConversionTrackable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mConversionTrackableSource:Lcom/instagram/android/fragment/ConversionTrackable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/fragment/ConversionTrackable;)Lcom/instagram/android/fragment/ConversionTrackable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mConversionTrackableSource:Lcom/instagram/android/fragment/ConversionTrackable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFeedAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFeedAdapter:Lcom/instagram/android/feed/adapter/FeedAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->showDoubleTapHintIfNecessary()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindFoursquareLocation(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V
    .locals 3
    .parameter "holder"
    .parameter "media"

    .prologue
    .line 389
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->stream_photo_header_glyph_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/d;->textview_location_foursquare:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$5;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    return-void
.end method

.method private bindUserLocation(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V
    .locals 3
    .parameter "holder"
    .parameter "media"

    .prologue
    .line 348
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->hasLatLng()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/d;->textview_location_foursquare:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->stream_photo_header_glyph_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$4;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/d;->textview_location_user:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->stream_photo_header_glyph_location_undefined:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static getHeaderHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;
    .locals 2
    .parameter "view"

    .prologue
    .line 451
    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;

    invoke-direct {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;-><init>()V

    .line 452
    sget v0, Lcom/facebook/g;->row_feed_photo_profile_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileImageView:Lcom/instagram/android/mediacache/IgImageView;

    .line 453
    sget v0, Lcom/facebook/g;->row_feed_photo_profile_name:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileName:Landroid/widget/TextView;

    .line 454
    sget v0, Lcom/facebook/g;->row_feed_photo_profile_timeago:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->timeAgo:Landroid/widget/TextView;

    .line 455
    sget v0, Lcom/facebook/g;->row_feed_photo_location:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    .line 456
    sget v0, Lcom/facebook/g;->row_feed_photo_location_glyph:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    .line 457
    return-object v1
.end method

.method private getHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;
    .locals 2
    .parameter "view"

    .prologue
    .line 471
    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;

    invoke-direct {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;-><init>()V

    .line 472
    sget v0, Lcom/facebook/g;->row_feed_photo_textview_comments:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->textViewComments:Landroid/widget/TextView;

    .line 473
    sget v0, Lcom/facebook/g;->row_feed_photo_comments_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->commentsGroup:Landroid/view/ViewGroup;

    .line 474
    sget v0, Lcom/facebook/g;->row_feed_photo_likes_group:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likesGroup:Landroid/view/ViewGroup;

    .line 475
    sget v0, Lcom/facebook/g;->row_feed_photo_textview_likes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likeText:Landroid/widget/TextView;

    .line 476
    sget v0, Lcom/facebook/g;->row_feed_photo_toggle_button_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->toggleButtonLike:Landroid/widget/CompoundButton;

    .line 477
    sget v0, Lcom/facebook/g;->row_feed_photo_button_comment:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonComment:Landroid/widget/ImageView;

    .line 478
    sget v0, Lcom/facebook/g;->row_feed_photo_button_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/MediaOptionsButton;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    .line 479
    invoke-static {p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->getHeaderHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->header:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;

    .line 480
    invoke-static {p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->getMediaHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 481
    return-object v1
.end method

.method public static getMediaHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    .locals 2
    .parameter "view"

    .prologue
    .line 461
    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-direct {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;-><init>()V

    .line 462
    sget v0, Lcom/facebook/g;->media_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaGroup:Landroid/view/ViewGroup;

    .line 463
    sget v0, Lcom/facebook/g;->row_feed_photo_imageview:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/mediacache/IgProgressImageView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    .line 464
    sget v0, Lcom/facebook/g;->row_feed_photo_people_tagging:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    .line 465
    sget v0, Lcom/facebook/g;->row_feed_photo_tags_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    .line 466
    sget v0, Lcom/facebook/g;->row_feed_video_indicator:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/video/ui/MediaActionsView;

    iput-object v0, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaActionsView:Lcom/instagram/android/video/ui/MediaActionsView;

    .line 467
    return-object v1
.end method

.method private showDoubleTapHintIfNecessary()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 153
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getDoubleTappedToLikeHintImpressions()I

    move-result v1

    .line 155
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/Preferences;->getHasUsedDoubleTapToLike()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/facebook/k;->double_tap_to_like_hint:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 158
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 159
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 160
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setDoubleTappedToLikeHintImpressions(I)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public bindMediaGroup(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Lcom/instagram/android/model/Media;IZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 8
    .parameter "holder"
    .parameter "media"
    .parameter "position"
    .parameter "shouldDisplayTags"
    .parameter "videoIconState"
    .parameter "onClickTagListener"
    .parameter "optionsButton"

    .prologue
    .line 250
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 254
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    sget v1, Lcom/facebook/g;->key_list_position:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/mediacache/IgProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 255
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    sget v1, Lcom/facebook/g;->key_media_id:I

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/mediacache/IgProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 257
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->clearAnimation()V

    .line 259
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PAUSE:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-eq p5, v0, :cond_0

    sget-object v0, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    if-ne p5, v0, :cond_1

    .line 263
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setVisibility(I)V

    .line 268
    :goto_0
    iget-object v7, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    new-instance v0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$3;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Lcom/instagram/android/model/Media;ZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View;)V

    invoke-virtual {v7, v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->setOnLoadListener(Lcom/instagram/android/mediacache/IgProgressImageView$OnLoadListener;)V

    .line 304
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->hasLocalBitmap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getLocalBitmapUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setUrl(Ljava/lang/String;)V

    .line 312
    :goto_1
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_5

    .line 313
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    .line 314
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    sget v1, Lcom/facebook/g;->key_media_id:I

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 316
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setVisibility(I)V

    .line 317
    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 322
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    .line 323
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p6, v2}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setPeopleTags(Lcom/instagram/android/people/model/PeopleTagCollection;Landroid/view/View$OnClickListener;Z)V

    .line 333
    :goto_3
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgProgressImageView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 334
    invoke-virtual {p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    .line 342
    :goto_4
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaActionsView:Lcom/instagram/android/video/ui/MediaActionsView;

    invoke-virtual {v0}, Lcom/instagram/android/video/ui/MediaActionsView;->hideHeart()V

    .line 343
    return-void

    .line 265
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 307
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getSizedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    .line 325
    :cond_4
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->removeAllViews()V

    goto :goto_3

    .line 328
    :cond_5
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 336
    :cond_6
    invoke-virtual {p1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->HIDDEN:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->setVideoIconState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto :goto_4
.end method

.method public bindProfileHeader(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V
    .locals 4
    .parameter "holder"
    .parameter "media"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 405
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileImageView:Lcom/instagram/android/mediacache/IgImageView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getUser()Lcom/instagram/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/model/User;->getProfilePicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setUrl(Ljava/lang/String;)V

    .line 406
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileImageView:Lcom/instagram/android/mediacache/IgImageView;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$6;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getUserNameText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->profileName:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 420
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getVenue()Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getFeedItemLocationType()Lcom/instagram/android/model/Media$FeedItemLocationType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->Foursquare:Lcom/instagram/android/model/Media$FeedItemLocationType;

    if-ne v0, v1, :cond_1

    .line 427
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindFoursquareLocation(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V

    .line 438
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->timeAgo:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getFormattedDate()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void

    .line 428
    :cond_1
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getFeedItemLocationType()Lcom/instagram/android/model/Media$FeedItemLocationType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$FeedItemLocationType;->User:Lcom/instagram/android/model/Media$FeedItemLocationType;

    if-ne v0, v1, :cond_0

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindUserLocation(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;->locationGlyph:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindView(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;Lcom/instagram/android/model/Media;IZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "holder"
    .parameter "media"
    .parameter "position"
    .parameter "shouldDisplayTags"
    .parameter "videoIconState"
    .parameter "onClickTagListener"

    .prologue
    .line 174
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->header:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;

    invoke-virtual {p0, v0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindProfileHeader(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$HeaderHolder;Lcom/instagram/android/model/Media;)V

    .line 178
    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v7, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->bindMediaGroup(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Lcom/instagram/android/model/Media;IZLcom/instagram/android/video/ui/MediaActionsView$VideoIconState;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 189
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getLikeCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likeText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getLikeText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likeText:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 192
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likesGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 197
    :goto_0
    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getCommentCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->textViewComments:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->getCommentText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->textViewComments:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 200
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->commentsGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    :goto_1
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->toggleButtonLike:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->toggleButtonLike:Landroid/widget/CompoundButton;

    invoke-virtual {p2}, Lcom/instagram/android/model/Media;->isHasLiked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 208
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->toggleButtonLike:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonComment:Landroid/widget/ImageView;

    new-instance v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$2;-><init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-virtual {v0, p2}, Lcom/instagram/android/widget/MediaOptionsButton;->setMedia(Lcom/instagram/android/model/Media;)V

    .line 230
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->setActivityContext(Landroid/content/Context;)V

    .line 231
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mFragmentManager:Landroid/support/v4/app/p;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->setFragmentManager(Landroid/support/v4/app/p;)V

    .line 232
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mLoaderManager:Landroid/support/v4/app/af;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->setLoaderManager(Landroid/support/v4/app/af;)V

    .line 237
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->setEnabled(Z)V

    .line 238
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->buttonOptions:Lcom/instagram/android/widget/MediaOptionsButton;

    iget-object v1, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    invoke-virtual {v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->isLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->setClickable(Z)V

    .line 239
    return-void

    .line 194
    :cond_0
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->likesGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 202
    :cond_1
    iget-object v0, p1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->commentsGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 443
    sget v1, Lcom/facebook/h;->row_feed_photo:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 444
    invoke-direct {p0, v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->getHolder(Landroid/view/View;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 446
    iget-object v2, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    iget-object v2, v2, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaGroup:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$Holder;->media:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 447
    return-object v0
.end method
