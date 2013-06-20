.class abstract enum Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;
.super Ljava/lang/Enum;
.source "EditSharingSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field public static final enum Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field public static final enum Flickr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field public static final enum Foursquare:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field public static final enum Tumblr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

.field public static final enum Twitter:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$1;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    .line 70
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$2;

    const-string v1, "Twitter"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Twitter:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    .line 95
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$3;

    const-string v1, "Foursquare"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Foursquare:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    .line 117
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$4;

    const-string v1, "Tumblr"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Tumblr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    .line 139
    new-instance v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$5;

    const-string v1, "Flickr"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Flickr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Facebook:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Twitter:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Foursquare:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Tumblr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->Flickr:Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->$VALUES:[Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/instagram/android/fragment/EditSharingSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->$VALUES:[Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    invoke-virtual {v0}, [Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/fragment/EditSharingSettingsFragment$Account;

    return-object v0
.end method


# virtual methods
.method public abstract getName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getResId()I
.end method

.method public abstract isConnected(Landroid/content/Context;)Z
.end method

.method public abstract unlink(Landroid/content/Context;)V
.end method
