.class Lcom/instagram/android/loader/XAuthResponse$Params;
.super Ljava/lang/Object;
.source "XAuthResponse.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->token:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->secret:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/loader/XAuthResponse$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/instagram/android/loader/XAuthResponse$Params;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->secret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->secret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/instagram/android/loader/XAuthResponse$Params;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/instagram/android/loader/XAuthResponse$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/instagram/android/loader/XAuthResponse$Params;->errorMessage:Ljava/lang/String;

    return-object p1
.end method
