.class Lcom/instagram/android/location/Venue$SystemClassLoader;
.super Ljava/lang/Object;
.source "Venue.java"


# static fields
.field public static loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/instagram/android/location/Venue$SystemClassLoader$1;

    invoke-direct {v0}, Lcom/instagram/android/location/Venue$SystemClassLoader$1;-><init>()V

    sput-object v0, Lcom/instagram/android/location/Venue$SystemClassLoader;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
