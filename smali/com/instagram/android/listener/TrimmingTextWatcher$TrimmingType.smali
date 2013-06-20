.class public final enum Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;
.super Ljava/lang/Enum;
.source "TrimmingTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

.field public static final enum TRIM_BEGINNING:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

.field public static final enum TRIM_BOTH:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

.field public static final enum TRIM_END:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    const-string v1, "TRIM_BEGINNING"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BEGINNING:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    .line 16
    new-instance v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    const-string v1, "TRIM_END"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_END:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    .line 17
    new-instance v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    const-string v1, "TRIM_BOTH"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BOTH:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    sget-object v1, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BEGINNING:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_END:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->TRIM_BOTH:Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->$VALUES:[Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->$VALUES:[Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    invoke-virtual {v0}, [Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/listener/TrimmingTextWatcher$TrimmingType;

    return-object v0
.end method
