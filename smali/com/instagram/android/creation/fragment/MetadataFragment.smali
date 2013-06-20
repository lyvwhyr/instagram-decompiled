.class public Lcom/instagram/android/creation/fragment/MetadataFragment;
.super Lcom/instagram/android/fragment/IgFragment;
.source "MetadataFragment.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "METADATA_FRAGMENT"

.field private static final HANDLER_MESSAGE_LOCATION_TIMED_OUT:I = 0x0

.field public static final INTENT_EXTRA_LOCATION_KEY:Ljava/lang/String; = "location"

.field public static final INTENT_EXTRA_ORIGINAL_HEIGHT:Ljava/lang/String; = "originalHeight"

.field public static final INTENT_EXTRA_ORIGINAL_WIDTH:Ljava/lang/String; = "originalWidth"

.field public static final INTENT_EXTRA_PENDING_MEDIA_KEY:Ljava/lang/String; = "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

.field public static final INTENT_EXTRA_PHOTO_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final INTENT_EXTRA_PHOTO_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final INTENT_EXTRA_VENUE_KEY:Ljava/lang/String; = "venue"

.field public static final LOCATION_TIMEOUT_MILLIS:I = 0x2710

.field private static final REQUEST_FLICKR_AUTH:I = 0x4

.field private static final REQUEST_FOURSQUARE_AUTH:I = 0x2

.field private static final REQUEST_PEOPLE_TAGS:I = 0x5

.field private static final REQUEST_TUMBLR_AUTH:I = 0x3

.field private static final REQUEST_TWITTER_AUTH:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MetadataFragment"


# instance fields
.field private mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

.field private final mFacebookAuthListener:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

.field private mFacebookButton:Landroid/widget/CompoundButton;

.field private mFlickrButton:Landroid/widget/CompoundButton;

.field private mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

.field private mGeotagCheckBox:Landroid/widget/CompoundButton;

.field private mGeotagLocationHint:Landroid/widget/TextView;

.field private mGeotagTextView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mLocation:Landroid/location/Location;

.field private mMedia:Lcom/instagram/android/model/PendingMedia;

.field private mMetadataRowLocation:Landroid/view/View;

.field private mMetadataRowPhotomap:Landroid/view/View;

.field private mNameLocationCheckBox:Landroid/widget/CheckBox;

.field mNearbyVenuesLocationObserver:Ljava/util/Observer;

.field private mPendingMediaKey:Ljava/lang/String;

.field private mPeopleCheckBox:Landroid/widget/CheckBox;

.field private mPeopleTextView:Landroid/widget/TextView;

.field private mTumblrButton:Landroid/widget/CompoundButton;

.field private mTwitterButton:Landroid/widget/CompoundButton;

.field private mVenue:Lcom/instagram/android/location/Venue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/fragment/IgFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;Lcom/instagram/android/creation/fragment/MetadataFragment$1;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookAuthListener:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    .line 118
    new-instance v0, Lcom/instagram/android/creation/fragment/MetadataFragment$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$1;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    .line 136
    new-instance v0, Lcom/instagram/android/creation/fragment/MetadataFragment$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$2;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mHandler:Landroid/os/Handler;

    .line 721
    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/creation/fragment/MetadataFragment;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->startPeopleTagging()V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookAuthListener:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/instagram/android/creation/fragment/MetadataFragment;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/widget/CaptionAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/creation/fragment/MetadataFragment;)Lcom/instagram/android/model/PendingMedia;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    return-object v0
.end method

.method static synthetic access$600(Lcom/instagram/android/creation/fragment/MetadataFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->hasLocation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->requestLocation()V

    return-void
.end method

.method static synthetic access$800(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->dismissKeyboard()V

    return-void
.end method

.method static synthetic access$900(Lcom/instagram/android/creation/fragment/MetadataFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->configureGeoViewState()V

    return-void
.end method

.method private configureGeoViewState()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowLocation:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowPhotomap:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->input_single:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowLocation:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowPhotomap:Landroid/view/View;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->input_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private configureSharing(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 330
    sget v0, Lcom/facebook/g;->metadata_row_twitter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTwitterButton:Landroid/widget/CompoundButton;

    .line 331
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTwitterButton:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$8;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$8;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    sget v0, Lcom/facebook/g;->metadata_row_facebook:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookButton:Landroid/widget/CompoundButton;

    .line 352
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookButton:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$9;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$9;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    sget v0, Lcom/facebook/g;->metadata_row_foursquare:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    .line 382
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$10;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$10;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$11;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$11;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    sget v0, Lcom/facebook/g;->metadata_row_tumblr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTumblrButton:Landroid/widget/CompoundButton;

    .line 416
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTumblrButton:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$12;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$12;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 436
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_2

    .line 437
    sget v0, Lcom/facebook/g;->metadata_row_flickr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFlickrButton:Landroid/widget/CompoundButton;

    .line 438
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFlickrButton:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$13;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$13;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 463
    :cond_0
    :goto_0
    invoke-static {}, Lcom/instagram/util/IgGateKeeper;->isQuarantined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    sget v0, Lcom/facebook/g;->share_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->sharing_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 466
    sget v0, Lcom/facebook/g;->share_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    :cond_1
    return-void

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_0

    .line 458
    sget v0, Lcom/facebook/g;->share_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/creation/widget/ShareTable;

    .line 459
    invoke-virtual {v0}, Lcom/instagram/android/creation/widget/ShareTable;->hideFlickrButton()V

    goto :goto_0
.end method

.method private configureVenue(Lcom/instagram/android/location/Venue;)V
    .locals 5
    .parameter "venue"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 594
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    if-nez v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNameLocationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 596
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 598
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setEnabled(Z)V

    .line 600
    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    invoke-virtual {v0, v2}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setEnabled(Z)V

    .line 609
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    :goto_1
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    invoke-virtual {v0, v3}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setAlpha(I)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNameLocationCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 616
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    invoke-virtual {v0, v3}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setEnabled(Z)V

    .line 618
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private dismissKeyboard()V
    .locals 2

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    invoke-static {v0, v1}, Lcom/instagram/util/ViewUtil;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 653
    return-void
.end method

.method private getPendingMedia()Lcom/instagram/android/model/PendingMedia;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPendingMediaKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPendingMediaKey:Ljava/lang/String;

    .line 475
    :cond_0
    invoke-static {}, Lcom/instagram/android/service/PendingMediaStore;->getInstance()Lcom/instagram/android/service/PendingMediaStore;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPendingMediaKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/service/PendingMediaStore;->get(Ljava/lang/String;)Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    return-object v0
.end method

.method private getPhotoLocation()Landroid/location/Location;
    .locals 3

    .prologue
    .line 549
    new-instance v0, Landroid/location/Location;

    const-string v1, "photo"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 551
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 552
    return-object v0
.end method

.method private handleResultForFlickrRequest(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 487
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 489
    :goto_0
    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFlickrButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 492
    :cond_0
    return-void

    .line 487
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResultForFoursquareRequest(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 495
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 497
    :goto_0
    if-eqz v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->hasVenue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;->setChecked(Z)V

    .line 503
    :cond_0
    return-void

    .line 495
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResultForTumblrRequest(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 506
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 508
    :goto_0
    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTumblrButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 511
    :cond_0
    return-void

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResultForTwitterRequest(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 479
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 481
    :goto_0
    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTwitterButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 484
    :cond_0
    return-void

    .line 479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasLocation()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPhotoLocation()Z
    .locals 2

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVenue()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseAndSetPhotoLocation()Z
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->hasPhotoLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getPhotoLocation()Landroid/location/Location;

    move-result-object v0

    .line 537
    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V

    .line 538
    const/4 v0, 0x1

    .line 540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestLocation()V
    .locals 4

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->parseAndSetPhotoLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 524
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    .line 525
    invoke-virtual {v0}, Lcom/instagram/android/InstagramApplication;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 526
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->isLocationValid(Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    invoke-direct {p0, v1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    sget v2, Lcom/facebook/k;->locating:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 530
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->requestLocationUpdates(Ljava/util/Observer;)Lcom/instagram/android/location/BestLocationListener;

    goto :goto_0
.end method

.method private setLocation(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    .line 561
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->stopUpdatingLocation()V

    .line 563
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->clearGeotag()V

    .line 578
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowLocation:Landroid/view/View;

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$14;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$14;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->name_this_location:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/PendingMedia;->setLatitude(D)V

    .line 576
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/model/PendingMedia;->setLongitude(D)V

    goto :goto_0
.end method

.method private startPeopleTagging()V
    .locals 4

    .prologue
    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    const-string v1, "media_url"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v3}, Lcom/instagram/android/model/PendingMedia;->getImageFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v1, "people_tags"

    iget-object v2, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v2}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 699
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/instagram/android/people/activity/PeopleTagActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 700
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 701
    const/4 v0, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 702
    return-void
.end method

.method private stopUpdatingLocation()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/InstagramApplication;

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNearbyVenuesLocationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/instagram/android/InstagramApplication;->removeLocationUpdates(Ljava/util/Observer;)V

    .line 516
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    return-void
.end method

.method private updatePeopleTagRow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 705
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->hasInTags()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 707
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 709
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/android/people/model/PeopleTagCollection;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/model/PeopleTag;

    invoke-virtual {v0}, Lcom/instagram/android/people/model/PeopleTag;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    sget v1, Lcom/facebook/k;->people_tagging_x_people:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v3}, Lcom/instagram/android/model/PendingMedia;->getInTags()Lcom/instagram/android/people/model/PeopleTagCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/instagram/android/people/model/PeopleTagCollection;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 657
    packed-switch p1, :pswitch_data_0

    .line 677
    invoke-static {}, Lcom/instagram/facebook/FacebookAccount;->getFacebook()Lcom/facebook/a/b;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookAuthListener:Lcom/instagram/android/creation/fragment/MetadataFragment$FacebookAuthListener;

    invoke-virtual {v0, v1}, Lcom/facebook/a/b;->a(Lcom/facebook/a/e;)V

    .line 681
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/a/b;->a(IILandroid/content/Intent;)V

    .line 684
    :goto_0
    return-void

    .line 659
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/instagram/android/creation/fragment/MetadataFragment;->handleResultForTwitterRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 662
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/instagram/android/creation/fragment/MetadataFragment;->handleResultForFoursquareRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 665
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/instagram/android/creation/fragment/MetadataFragment;->handleResultForTumblrRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 668
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/instagram/android/creation/fragment/MetadataFragment;->handleResultForFlickrRequest(ILandroid/content/Intent;)V

    goto :goto_0

    .line 671
    :pswitch_4
    const-string v0, "people_tags"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v1, v0}, Lcom/instagram/android/model/PendingMedia;->setInTags(Ljava/util/ArrayList;)V

    .line 674
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->updatePeopleTagRow()V

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onClickLocationButton(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 687
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->hasPhotoLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getPhotoLocation()Landroid/location/Location;

    move-result-object v0

    .line 688
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getFragmentManager()Landroid/support/v4/app/p;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/instagram/android/creation/NearbyVenuesFragment;->show(Landroid/support/v4/app/p;Ljava/lang/String;Landroid/location/Location;)V

    .line 689
    return-void

    :cond_0
    move-object v0, v1

    .line 687
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 298
    if-eqz p1, :cond_0

    .line 299
    const-string v0, "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPendingMediaKey:Ljava/lang/String;

    .line 300
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    .line 301
    const-string v0, "venue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getPendingMedia()Lcom/instagram/android/model/PendingMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    .line 306
    invoke-static {}, Lcom/instagram/util/CameraUsageReportingUtil;->didOpenPostMetadata()V

    .line 307
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 156
    sget v0, Lcom/facebook/h;->metadata:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 159
    sget v0, Lcom/facebook/g;->metadata_imageview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/ConstrainedImageView;

    iget-object v3, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->metadata_imageview_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/instagram/android/model/PendingMedia;->createThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/ConstrainedImageView;->setImageBitmapAsLoaded(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v3, Lcom/instagram/android/model/Media$MediaType;->VIDEO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v3, :cond_0

    .line 165
    sget v0, Lcom/facebook/g;->post_overlay:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/facebook/f;->upload_thumbnail_overlay_video:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 169
    :cond_0
    sget v0, Lcom/facebook/g;->captionTextView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    .line 170
    sget v0, Lcom/facebook/g;->geotagTextView:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/facebook/g;->geotagCheckBox:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    .line 172
    sget v0, Lcom/facebook/g;->geotagPickLocationHint:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    .line 173
    sget v0, Lcom/facebook/g;->metadata_row_location:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowLocation:Landroid/view/View;

    .line 174
    sget v0, Lcom/facebook/g;->nameLocationCheckBox:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNameLocationCheckBox:Landroid/widget/CheckBox;

    .line 175
    sget v0, Lcom/facebook/g;->metadata_row_add_to_your_your_photomap:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowPhotomap:Landroid/view/View;

    .line 177
    sget v0, Lcom/facebook/g;->action_bar_button_back:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/android/creation/fragment/MetadataFragment$3;

    invoke-direct {v3, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$3;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget v0, Lcom/facebook/g;->uploadButton:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/instagram/android/creation/fragment/MetadataFragment$4;

    invoke-direct {v3, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$4;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    new-instance v3, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instagram/android/adapter/FilterHashTagsAndNamesAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/instagram/android/widget/CaptionAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    invoke-direct {p0, v2}, Lcom/instagram/android/creation/fragment/MetadataFragment;->configureSharing(Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->setLocation(Landroid/location/Location;)V

    .line 213
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v3, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v3, :cond_1

    .line 214
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "originalWidth"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/model/PendingMedia;->setOriginalWidth(I)V

    .line 215
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "originalHeight"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/instagram/android/model/PendingMedia;->setOriginalHeight(I)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    new-instance v3, Lcom/instagram/android/creation/fragment/MetadataFragment$5;

    invoke-direct {v3, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$5;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    iget-object v3, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->getHasGeotagEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/instagram/android/UserPreferences;->getInstance()Lcom/instagram/android/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/UserPreferences;->hasSeenPhotoMapEducation()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 255
    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowPhotomap:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->configureGeoViewState()V

    .line 260
    sget v0, Lcom/facebook/g;->metadata_row_add_to_your_your_photomap:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$6;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0}, Lcom/instagram/android/model/PendingMedia;->getMediaType()Lcom/instagram/android/model/Media$MediaType;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/model/Media$MediaType;->PHOTO:Lcom/instagram/android/model/Media$MediaType;

    if-ne v0, v1, :cond_4

    .line 268
    sget v0, Lcom/facebook/g;->metadata_row_people:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/creation/fragment/MetadataFragment$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/creation/fragment/MetadataFragment$7;-><init>(Lcom/instagram/android/creation/fragment/MetadataFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    sget v0, Lcom/facebook/g;->metadata_textview_people:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    .line 275
    sget v0, Lcom/facebook/g;->tag_people_checkbox:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleCheckBox:Landroid/widget/CheckBox;

    .line 276
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->updatePeopleTagRow()V

    .line 281
    :goto_1
    return-object v2

    :cond_3
    move v0, v1

    .line 250
    goto :goto_0

    .line 278
    :cond_4
    sget v0, Lcom/facebook/g;->metadata_row_people:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 760
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onDestroyView()V

    .line 762
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/CaptionAutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 763
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mCaptionText:Lcom/instagram/android/widget/CaptionAutoCompleteTextView;

    .line 764
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagCheckBox:Landroid/widget/CompoundButton;

    .line 765
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagLocationHint:Landroid/widget/TextView;

    .line 766
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTwitterButton:Landroid/widget/CompoundButton;

    .line 767
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFacebookButton:Landroid/widget/CompoundButton;

    .line 768
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFoursquareButton:Lcom/instagram/android/creation/widget/AlphaUploadCompoundButton;

    .line 769
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mTumblrButton:Landroid/widget/CompoundButton;

    .line 770
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mFlickrButton:Landroid/widget/CompoundButton;

    .line 771
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowLocation:Landroid/view/View;

    .line 772
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mNameLocationCheckBox:Landroid/widget/CheckBox;

    .line 773
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mGeotagTextView:Landroid/widget/TextView;

    .line 774
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMetadataRowPhotomap:Landroid/view/View;

    .line 775
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleTextView:Landroid/widget/TextView;

    .line 776
    iput-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPeopleCheckBox:Landroid/widget/CheckBox;

    .line 777
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 638
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onPause()V

    .line 640
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->dismissKeyboard()V

    .line 647
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onResume()V

    .line 626
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 633
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 323
    const-string v0, "com.instagram.android.MetadataFragment.INTENT_EXTRA_PENDING_MEDIA_ID"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mPendingMediaKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "location"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    const-string v0, "venue"

    iget-object v1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->stopUpdatingLocation()V

    .line 755
    invoke-super {p0}, Lcom/instagram/android/fragment/IgFragment;->onStop()V

    .line 756
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 286
    invoke-super {p0, p1}, Lcom/instagram/android/fragment/IgFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 289
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    invoke-direct {p0, v0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->configureVenue(Lcom/instagram/android/location/Venue;)V

    .line 290
    return-void
.end method

.method public setVenue(Lcom/instagram/android/location/Venue;)V
    .locals 1
    .parameter "venue"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mVenue:Lcom/instagram/android/location/Venue;

    .line 586
    iget-object v0, p0, Lcom/instagram/android/creation/fragment/MetadataFragment;->mMedia:Lcom/instagram/android/model/PendingMedia;

    invoke-virtual {v0, p1}, Lcom/instagram/android/model/PendingMedia;->setVenue(Lcom/instagram/android/location/Venue;)V

    .line 588
    invoke-virtual {p0}, Lcom/instagram/android/creation/fragment/MetadataFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/fragment/MetadataFragment;->configureVenue(Lcom/instagram/android/location/Venue;)V

    .line 591
    :cond_0
    return-void
.end method
