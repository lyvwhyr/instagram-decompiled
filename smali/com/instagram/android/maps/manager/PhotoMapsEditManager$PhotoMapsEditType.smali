.class public final enum Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
.super Ljava/lang/Enum;
.source "PhotoMapsEditManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

.field public static final enum EDIT:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

.field public static final enum REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->EDIT:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    .line 22
    new-instance v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    const-string v1, "REVIEW"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->EDIT:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->REVIEW:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->$VALUES:[Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->$VALUES:[Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    invoke-virtual {v0}, [Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    return-object v0
.end method
