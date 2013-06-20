.class public Lcom/instagram/android/text/method/UpperToLowerReplacement;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "UpperToLowerReplacement.java"


# static fields
.field private static final ORIGINAL:[C

.field private static final REPLACEMENT:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1a

    .line 9
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/instagram/android/text/method/UpperToLowerReplacement;->ORIGINAL:[C

    .line 11
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/instagram/android/text/method/UpperToLowerReplacement;->REPLACEMENT:[C

    return-void

    .line 9
    nop

    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data

    .line 11
    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/instagram/android/text/method/UpperToLowerReplacement;->ORIGINAL:[C

    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/instagram/android/text/method/UpperToLowerReplacement;->REPLACEMENT:[C

    return-object v0
.end method
