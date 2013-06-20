.class public Lcom/instagram/android/adapter/NearbyVenuesAdapter;
.super Landroid/widget/BaseAdapter;
.source "NearbyVenuesAdapter.java"


# static fields
.field public static final FILENAME:Ljava/lang/String; = "custom_venues.json"

.field public static final FOOTER_ROW_ADD:I = 0x0

.field public static final FOOTER_ROW_SEARCH:I = 0x1

.field public static final MODE_CUSTOM_VENUE:I = 0x1

.field public static final MODE_NEARBY_VENUES:I = 0x0

.field public static final NUM_FOOTER_ROWS:I = 0x2

.field private static final NUM_VIEW_TYPES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CustomVenuesAdapter"

.field private static final VIEW_TYPE_ADD:I = 0x0

.field private static final VIEW_TYPE_SEARCH:I = 0x1

.field private static final VIEW_TYPE_VENUE:I = 0x2


# instance fields
.field private mCustomVenueNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomVenues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomVenuesFiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocation:Landroid/location/Location;

.field private mNearbyVenues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mNearbyVenues:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    .line 72
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->loadSavedCustomVenues()V

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/adapter/NearbyVenuesAdapter;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->doSerializeCustomVenues(Ljava/util/List;)V

    return-void
.end method

.method private addCustomVenue(Lcom/instagram/android/location/Venue;)V
    .locals 2
    .parameter "venue"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    iget-object v1, p1, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private bindView(IILandroid/view/View;)V
    .locals 2
    .parameter "position"
    .parameter "viewType"
    .parameter "view"

    .prologue
    .line 241
    packed-switch p2, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 243
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter;->bindView(Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter$Holder;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 246
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$SearchRowViewAdapter$Holder;

    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$SearchRowViewAdapter;->bindView(Lcom/instagram/android/adapter/NearbyVenuesAdapter$SearchRowViewAdapter$Holder;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getItem(I)Lcom/instagram/android/location/Venue;

    move-result-object v1

    .line 250
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;

    invoke-static {v0, v1, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter;->bindView(Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter$Holder;Lcom/instagram/android/location/Venue;I)V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "viewType"
    .parameter "parent"

    .prologue
    .line 227
    packed-switch p1, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$AddRowViewAdapter;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$SearchRowViewAdapter;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$VenueRowAdapter;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doSerializeCustomVenues(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, venues:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/location/Venue;>;"
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 334
    const-string v1, "custom_venues.json"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 337
    const/4 v1, 0x0

    .line 339
    :try_start_0
    const-string v2, "custom_venues.json"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 344
    :goto_0
    if-nez v1, :cond_1

    .line 345
    const-string v0, "CustomVenuesAdapter"

    const-string v1, "Failed to acquire output stream for custom_venues.json"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_1
    return-void

    .line 340
    :catch_0
    move-exception v0

    .line 341
    const-string v2, "CustomVenuesAdapter"

    const-string v3, "File not found wile getting output stream for custom_venues.json"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 350
    :cond_2
    const-string v0, "CustomVenuesAdapter"

    const-string v1, "Custom venues is null during serialization"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 355
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v2, "CustomVenues"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 360
    const-class v2, Lcom/instagram/android/location/Venue;

    new-instance v3, Lcom/instagram/android/adapter/NearbyVenuesAdapter$CustomVenueSerializer;

    invoke-direct {v3}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$CustomVenueSerializer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 362
    new-instance v2, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 365
    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 370
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 371
    :catch_1
    move-exception v0

    goto :goto_1

    .line 366
    :catch_2
    move-exception v0

    .line 367
    :try_start_3
    const-string v2, "CustomVenuesAdapter"

    const-string v3, "Exception while writing out custom_venues.json"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 371
    :catch_3
    move-exception v0

    goto :goto_1

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 372
    :goto_2
    throw v0

    .line 371
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private filterCustomVenues()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    .line 266
    iget-object v2, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method

.method private getCurrentMode()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomVenueByName(Ljava/lang/String;)Lcom/instagram/android/location/Venue;
    .locals 3
    .parameter "name"

    .prologue
    .line 135
    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    .line 140
    iget-object v2, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVenue(I)Lcom/instagram/android/location/Venue;
    .locals 1
    .parameter "location"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCurrentMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mNearbyVenues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private loadSavedCustomVenues()V
    .locals 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 278
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 280
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 282
    const/4 v0, 0x0

    .line 284
    :try_start_0
    const-string v1, "custom_venues.json"

    invoke-virtual {v2, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 289
    :goto_0
    if-eqz v1, :cond_0

    .line 291
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    const-string v3, "CustomVenueModule"

    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/Version;)V

    .line 292
    const-class v3, Lcom/instagram/android/location/Venue;

    new-instance v4, Lcom/instagram/android/adapter/NearbyVenuesAdapter$CustomVenueDeserializer;

    invoke-direct {v4}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$CustomVenueDeserializer;-><init>()V

    invoke-virtual {v0, v3, v4}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 294
    new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 295
    new-instance v3, Lcom/instagram/android/adapter/NearbyVenuesAdapter$1;

    invoke-direct {v3, p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$1;-><init>(Lcom/instagram/android/adapter/NearbyVenuesAdapter;)V

    .line 299
    :try_start_1
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 300
    iget-object v3, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 312
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 313
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/location/Venue;

    .line 314
    iget-object v2, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenueNames:Ljava/util/Set;

    iget-object v0, v0, Lcom/instagram/android/location/Venue;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 285
    :catch_0
    move-exception v1

    .line 286
    const-string v1, "CustomVenuesAdapter"

    const-string v3, "No serialized pending media file found, custom_venues.json"

    invoke-static {v1, v3}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    :try_start_3
    const-string v3, "CustomVenuesAdapter"

    const-string v4, "Failed to decode custom_venues.json, deleting file."

    invoke-static {v3, v4, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    const-string v0, "custom_venues.json"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 307
    :catch_2
    move-exception v0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 308
    :goto_3
    throw v0

    .line 307
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    .line 316
    :cond_1
    return-void
.end method

.method private serializeCustomVenues()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenues:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    new-instance v1, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;

    invoke-direct {v1, p0, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter$2;-><init>(Lcom/instagram/android/adapter/NearbyVenuesAdapter;Ljava/util/List;)V

    .line 327
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 328
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getVenuesCount()I

    move-result v0

    .line 80
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCurrentMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x2

    .line 84
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/instagram/android/location/Venue;
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getVenuesCount()I

    move-result v0

    .line 100
    if-ge p1, v0, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getVenue(I)Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    sub-int v0, p1, v0

    .line 107
    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Get item called for unsupported footer row"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCustomVenueByName(Ljava/lang/String;)Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/instagram/android/location/Venue;->fromCustomName(Ljava/lang/String;Landroid/location/Location;)Lcom/instagram/android/location/Venue;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/location/Venue;->setIsCustomVenue(Z)V

    .line 120
    invoke-direct {p0, v0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->addCustomVenue(Lcom/instagram/android/location/Venue;)V

    .line 121
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->serializeCustomVenues()V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getItem(I)Lcom/instagram/android/location/Venue;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getVenuesCount()I

    move-result v0

    .line 188
    if-ge p1, v0, :cond_0

    .line 189
    const/4 v0, 0x2

    .line 204
    :goto_0
    return v0

    .line 193
    :cond_0
    sub-int v0, p1, v0

    .line 195
    packed-switch v0, :pswitch_data_0

    .line 204
    const/4 v0, -0x2

    goto :goto_0

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVenuesCount()I
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mNearbyVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mCustomVenuesFiltered:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getItemViewType(I)I

    move-result v0

    .line 174
    if-nez p2, :cond_0

    .line 175
    invoke-direct {p0, v0, p3}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 178
    .end local p2
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->bindView(IILandroid/view/View;)V

    .line 180
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public isCustomRow(II)Z
    .locals 2
    .parameter "row"
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getCurrentMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->getVenuesCount()I

    move-result v1

    .line 382
    if-lt p2, v1, :cond_0

    sub-int v1, p2, v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mLocation:Landroid/location/Location;

    .line 274
    return-void
.end method

.method public setNearbyVenues(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/location/Venue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, venues:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/location/Venue;>;"
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mNearbyVenues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    iget-object v0, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mNearbyVenues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    return-void
.end method

.method public updateSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter "searchString"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->mSearchString:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->filterCustomVenues()V

    .line 260
    invoke-virtual {p0}, Lcom/instagram/android/adapter/NearbyVenuesAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method
