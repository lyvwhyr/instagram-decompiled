.class public Lcom/instagram/android/creation/widget/FilterTileUtil;
.super Ljava/lang/Object;
.source "FilterTileUtil.java"


# static fields
.field private static final RES_NAME_FMT:Ljava/lang/String; = "camera_edit_filter_%s"

.field private static final sResIdCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/creation/widget/FilterTileUtil;->sResIdCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhotoFilters()[Lcom/instagram/android/gl/NativeFilter;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getFilters()[Lcom/instagram/android/gl/NativeFilter;

    move-result-object v0

    return-object v0
.end method

.method public static getResId(Landroid/content/Context;Lcom/instagram/android/gl/IgFilter;)I
    .locals 6
    .parameter "context"
    .parameter "filter"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/instagram/android/gl/IgFilter;->getResInfix()Ljava/lang/String;

    move-result-object v1

    .line 46
    sget-object v0, Lcom/instagram/android/creation/widget/FilterTileUtil;->sResIdCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/instagram/android/creation/widget/FilterTileUtil;->sResIdCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    const-string v2, "camera_edit_filter_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgFilter;->getResInfix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/i/c;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 52
    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    sget-object v2, Lcom/instagram/android/creation/widget/FilterTileUtil;->sResIdCache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getVideoFilterById(I)Lcom/instagram/android/video/filters/VideoFilter;
    .locals 5
    .parameter "id"

    .prologue
    .line 80
    invoke-static {}, Lcom/instagram/android/creation/widget/FilterTileUtil;->getVideoFilters()[Lcom/instagram/android/video/filters/VideoFilter;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 81
    invoke-virtual {v0}, Lcom/instagram/android/video/filters/VideoFilter;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 85
    :goto_1
    return-object v0

    .line 80
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getVideoFilters()[Lcom/instagram/android/video/filters/VideoFilter;
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/instagram/android/video/filters/VideoFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/instagram/android/video/filters/NormalFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/NormalFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/instagram/android/video/filters/StinsonFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/StinsonFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/instagram/android/video/filters/VesperFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/VesperFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/instagram/android/video/filters/ClarendonFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/ClarendonFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/instagram/android/video/filters/MavenFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/MavenFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/instagram/android/video/filters/GinghamFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/GinghamFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/instagram/android/video/filters/GinzaFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/GinzaFilter;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/instagram/android/video/filters/SkylineFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/SkylineFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/instagram/android/video/filters/DogpatchFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/DogpatchFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/instagram/android/video/filters/BrooklynFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/BrooklynFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/instagram/android/video/filters/MoonFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/MoonFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/instagram/android/video/filters/HelenaFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/HelenaFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/instagram/android/video/filters/AshbyFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/AshbyFilter;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/instagram/android/video/filters/CharmesFilter;

    invoke-direct {v2}, Lcom/instagram/android/video/filters/CharmesFilter;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
