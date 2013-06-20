.class public Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;
.super Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C = null

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->complete:Z

    .line 111
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 437
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 438
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 439
    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDigestHeader(Lch/boye/httpclientandroidlib/auth/Credentials;)Lch/boye/httpclientandroidlib/Header;
    .locals 20
    .parameter "credentials"

    .prologue
    .line 228
    const-string v2, "uri"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 229
    const-string v2, "realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    const-string v2, "nonce"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 231
    const-string v2, "opaque"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    const-string v2, "methodname"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 233
    const-string v2, "algorithm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    if-nez v6, :cond_0

    .line 235
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "URI may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_0
    if-nez v7, :cond_1

    .line 238
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Realm may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_1
    if-nez v8, :cond_2

    .line 241
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Nonce may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_2
    const/4 v2, -0x1

    .line 246
    const-string v4, "qop"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    if-eqz v4, :cond_5

    .line 248
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v5, v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 250
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 251
    const-string v12, "auth"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 252
    const/4 v2, 0x2

    :cond_4
    move v5, v2

    .line 260
    :goto_0
    const/4 v2, -0x1

    if-ne v5, v2, :cond_6

    .line 261
    new-instance v2, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "None of the qop methods is supported: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_5
    const/4 v2, 0x0

    move v5, v2

    goto :goto_0

    .line 265
    :cond_6
    if-nez v3, :cond_1a

    .line 266
    const-string v2, "MD5"

    .line 269
    :goto_1
    const-string v3, "charset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    if-nez v3, :cond_7

    .line 271
    const-string v3, "ISO-8859-1"

    .line 275
    :cond_7
    const-string v4, "MD5-sess"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 276
    const-string v4, "MD5"

    .line 281
    :goto_2
    :try_start_0
    invoke-static {v4}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 286
    invoke-interface/range {p1 .. p1}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v11

    .line 287
    invoke-interface/range {p1 .. p1}, Lch/boye/httpclientandroidlib/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v12

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 290
    move-object/from16 v0, p0

    iget-wide v13, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->nounceCount:J

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->nounceCount:J

    .line 296
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x100

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    new-instance v14, Ljava/util/Formatter;

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v13, v15}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 298
    const-string v15, "%08x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->nounceCount:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 299
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    if-nez v15, :cond_8

    .line 302
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 305
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 306
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 308
    const-string v15, "MD5-sess"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 314
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    invoke-static {v12}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v12

    .line 317
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 318
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x3a

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v15, 0x3a

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 327
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    invoke-static {v12, v3}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    invoke-static {v12}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v12

    .line 329
    const/4 v15, 0x2

    if-ne v5, v15, :cond_10

    .line 331
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v15, 0x3a

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 340
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    invoke-static {v10, v3}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v10

    .line 345
    if-nez v5, :cond_12

    .line 346
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 347
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    :goto_6
    invoke-static {v3}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v3

    .line 359
    new-instance v10, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    const/16 v4, 0x80

    invoke-direct {v10, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;-><init>(I)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->isProxy()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 361
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v10, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 365
    :goto_7
    const-string v4, ": Digest "

    invoke-virtual {v10, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 367
    new-instance v12, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v13, "username"

    invoke-direct {v4, v13, v11}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v11, "realm"

    invoke-direct {v4, v11, v7}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v7, "nonce"

    invoke-direct {v4, v7, v8}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v7, "uri"

    invoke-direct {v4, v7, v6}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v6, "response"

    invoke-direct {v4, v6, v3}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    if-eqz v5, :cond_9

    .line 375
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v6, "qop"

    const/4 v3, 0x1

    if-ne v5, v3, :cond_15

    const-string v3, "auth-int"

    :goto_8
    invoke-direct {v4, v6, v3}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v4, "nc"

    invoke-direct {v3, v4, v14}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v4, "cnonce"

    move-object/from16 v0, p0

    iget-object v5, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_9
    if-eqz v2, :cond_a

    .line 380
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v4, "algorithm"

    invoke-direct {v3, v4, v2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_a
    if-eqz v9, :cond_b

    .line 383
    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    const-string v3, "opaque"

    invoke-direct {v2, v3, v9}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_b
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_18

    .line 387
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;

    .line 388
    if-lez v3, :cond_c

    .line 389
    const-string v4, ", "

    invoke-virtual {v10, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 391
    :cond_c
    const-string v4, "nc"

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "qop"

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_d
    const/4 v4, 0x1

    .line 392
    :goto_a
    sget-object v5, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->DEFAULT:Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;

    if-nez v4, :cond_17

    const/4 v4, 0x1

    :goto_b
    invoke-virtual {v5, v10, v2, v4}, Lch/boye/httpclientandroidlib/message/BasicHeaderValueFormatter;->formatNameValuePair(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;Lch/boye/httpclientandroidlib/NameValuePair;Z)Lch/boye/httpclientandroidlib/util/CharArrayBuffer;

    .line 386
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 282
    :catch_0
    move-exception v2

    .line 283
    new-instance v2, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsuppported digest algorithm: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_e
    const-wide/16 v13, 0x1

    move-object/from16 v0, p0

    iput-wide v13, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->nounceCount:J

    .line 293
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 294
    move-object/from16 v0, p0

    iput-object v8, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    goto/16 :goto_3

    .line 322
    :cond_f
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 323
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    goto/16 :goto_4

    .line 332
    :cond_10
    const/4 v15, 0x1

    if-ne v5, v15, :cond_11

    .line 335
    new-instance v2, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    const-string v3, "qop-int method is not suppported"

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_11
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v15, 0x3a

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto/16 :goto_5

    .line 350
    :cond_12
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 351
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v3, 0x1

    if-ne v5, v3, :cond_13

    const-string v3, "auth-int"

    :goto_c
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v12, 0x3a

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 351
    :cond_13
    const-string v3, "auth"

    goto :goto_c

    .line 363
    :cond_14
    const-string v4, "Authorization"

    invoke-virtual {v10, v4}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 375
    :cond_15
    const-string v3, "auth"

    goto/16 :goto_8

    .line 391
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 392
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 394
    :cond_18
    new-instance v2, Lch/boye/httpclientandroidlib/message/BufferedHeader;

    invoke-direct {v2, v10}, Lch/boye/httpclientandroidlib/message/BufferedHeader;-><init>(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    return-object v2

    :cond_19
    move-object v4, v2

    goto/16 :goto_2

    :cond_1a
    move-object v2, v3

    goto/16 :goto_1
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .parameter "digAlg"

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .parameter "binaryData"

    .prologue
    .line 417
    array-length v1, p0

    .line 418
    mul-int/lit8 v0, v1, 0x2

    new-array v2, v0, [C

    .line 419
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 420
    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    .line 421
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 422
    mul-int/lit8 v5, v0, 0x2

    sget-object v6, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    .line 423
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    .locals 3
    .parameter "credentials"
    .parameter "request"

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credentials may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    if-nez p2, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "methodname"

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    if-nez v0, :cond_2

    .line 202
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/auth/params/AuthParams;->getCredentialCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "charset"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->createDigestHeader(Lch/boye/httpclientandroidlib/auth/Credentials;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    return-object v0
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 142
    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 169
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public processChallenge(Lch/boye/httpclientandroidlib/Header;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/auth/RFC2617Scheme;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    .line 126
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;

    const-string v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;

    const-string v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/auth/DigestScheme;->complete:Z

    .line 133
    return-void
.end method
