.class Lcom/instagram/util/ContactHelper$NameQuery;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# static fields
.field public static final CONTACT_ID:I = 0x0

.field public static final DISPLAY_NAME:I = 0x3

.field public static final FAMILY_NAME:I = 0x2

.field public static final GIVEN_NAME:I = 0x1

.field public static final NAME_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/util/ContactHelper$NameQuery;->NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
