.class public Lcom/instagram/util/RequestUtil;
.super Ljava/lang/Object;
.source "RequestUtil.java"


# static fields
.field public static SIGNATURE_KEY_VERSION:Ljava/lang/String;

.field public static SIGNATURE_KEY_VERSION_FIELD_NAME:Ljava/lang/String;

.field static sLastValidAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "ig_sig_key_version"

    sput-object v0, Lcom/instagram/util/RequestUtil;->SIGNATURE_KEY_VERSION_FIELD_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "4"

    sput-object v0, Lcom/instagram/util/RequestUtil;->SIGNATURE_KEY_VERSION:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/util/RequestUtil;->sLastValidAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "message"

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v0, "a4d1b77bbb1a4a5ca695ad72c84b77e5"

    invoke-static {v0}, Lcom/instagram/android/gl/NativeBridge;->getInstagramString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/instagram/util/RequestUtil;->getValidMac()Ljavax/crypto/Mac;

    move-result-object v2

    .line 36
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 37
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 42
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed_to_generate_signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/NoopUtil;->report(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static getValidMac()Ljavax/crypto/Mac;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    sget-object v2, Lcom/instagram/util/RequestUtil;->sLastValidAlgorithm:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 60
    :try_start_0
    sget-object v2, Lcom/instagram/util/RequestUtil;->sLastValidAlgorithm:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v2

    .line 65
    :cond_0
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "HmacSHA256"

    aput-object v2, v3, v0

    const/4 v2, 0x1

    const-string v4, "hmacSHA256"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "HMAC-SHA256"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "hmac-sha256"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "HMAC/SHA256"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "hmac/sha256"

    aput-object v4, v3, v2

    .line 66
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 69
    :try_start_1
    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 73
    :goto_2
    if-eqz v0, :cond_1

    .line 74
    sput-object v5, Lcom/instagram/util/RequestUtil;->sLastValidAlgorithm:Ljava/lang/String;

    goto :goto_0

    .line 70
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 66
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 79
    goto :goto_0
.end method

.method public static setSignedBody(Lcom/instagram/api/RequestParams;Ljava/lang/String;)V
    .locals 4
    .parameter "params"
    .parameter "body"

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    invoke-static {p1}, Lcom/instagram/util/RequestUtil;->generateSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_0
    const-string v1, "signed_body"

    invoke-virtual {p0, v1, v0}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/instagram/util/RequestUtil;->SIGNATURE_KEY_VERSION_FIELD_NAME:Ljava/lang/String;

    sget-object v1, Lcom/instagram/util/RequestUtil;->SIGNATURE_KEY_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/instagram/api/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
