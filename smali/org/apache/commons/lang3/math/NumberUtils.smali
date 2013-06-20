.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 33
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 35
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 45
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 47
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 49
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 51
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 53
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 55
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 57
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 59
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 61
    const-wide/high16 v0, -0x4010

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 65
    const/high16 v0, 0x3f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 67
    const/high16 v0, -0x4080

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .parameter "str"

    .prologue
    .line 710
    if-nez p0, :cond_0

    .line 711
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0

    .line 714
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .parameter "str"

    .prologue
    .line 694
    if-nez p0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 697
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .parameter "str"

    .prologue
    .line 643
    if-nez p0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .parameter "str"

    .prologue
    .line 627
    if-nez p0, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "str"

    .prologue
    .line 660
    if-nez p0, :cond_0

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "str"

    .prologue
    .line 678
    if-nez p0, :cond_0

    .line 679
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 11
    .parameter "str"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 445
    if-nez p0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-object v1

    .line 448
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_2
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 461
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 465
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 466
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v6, 0x45

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x1

    .line 468
    if-le v2, v8, :cond_9

    .line 470
    if-le v6, v8, :cond_8

    .line 471
    if-lt v6, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v6, v0, :cond_6

    .line 472
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_6
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 478
    :goto_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 490
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_12

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_12

    .line 491
    if-le v6, v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_7

    .line 492
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    .line 499
    :goto_3
    sparse-switch v5, :sswitch_data_0

    .line 545
    :goto_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_8
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 480
    :cond_9
    if-le v6, v8, :cond_b

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v6, v0, :cond_a

    .line 482
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_a
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v2, v0

    move-object v0, v1

    .line 488
    goto/16 :goto_2

    :cond_b
    move-object v0, p0

    .line 486
    goto :goto_5

    :cond_c
    move v2, v4

    .line 498
    goto :goto_3

    .line 502
    :sswitch_0
    if-nez v0, :cond_f

    if-nez v1, :cond_f

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_d

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 506
    :cond_e
    :try_start_0
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 510
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_0

    .line 513
    :cond_f
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :sswitch_1
    :try_start_1
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 531
    :cond_10
    :goto_6
    :sswitch_2
    :try_start_2
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v0

    float-to-double v3, v0

    cmpl-double v0, v3, v9

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 539
    :cond_11
    :goto_7
    :try_start_3
    invoke-static {v6}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    goto/16 :goto_0

    .line 551
    :cond_12
    if-le v6, v8, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v6, v5, :cond_13

    .line 552
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 556
    :cond_13
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    .line 559
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    goto/16 :goto_0

    .line 560
    :catch_1
    move-exception v0

    .line 564
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 565
    :catch_2
    move-exception v0

    .line 568
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    goto/16 :goto_0

    .line 572
    :cond_14
    invoke-static {v2}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v1}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    .line 574
    :goto_8
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 582
    :cond_15
    :goto_9
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-wide v2

    cmpl-double v2, v2, v9

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 590
    :cond_16
    :goto_a
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_0

    :cond_17
    move v0, v4

    .line 572
    goto :goto_8

    .line 540
    :catch_3
    move-exception v0

    goto/16 :goto_4

    .line 586
    :catch_4
    move-exception v0

    goto :goto_a

    .line 578
    :catch_5
    move-exception v1

    goto :goto_9

    .line 535
    :catch_6
    move-exception v0

    goto :goto_7

    .line 524
    :catch_7
    move-exception v0

    goto/16 :goto_6

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 605
    if-nez p0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 609
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 610
    goto :goto_0

    .line 608
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 613
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 1288
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1291
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1292
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1296
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 14
    .parameter "str"

    .prologue
    const/16 v13, 0x2d

    const/16 v12, 0x39

    const/16 v11, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1313
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1411
    :cond_0
    :goto_0
    return v2

    .line 1316
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 1317
    array-length v3, v7

    .line 1323
    aget-char v0, v7, v2

    if-ne v0, v13, :cond_5

    move v0, v1

    .line 1324
    :goto_1
    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_7

    aget-char v4, v7, v0

    if-ne v4, v11, :cond_7

    add-int/lit8 v4, v0, 0x1

    aget-char v4, v7, v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_7

    .line 1325
    add-int/lit8 v0, v0, 0x2

    .line 1326
    if-eq v0, v3, :cond_0

    .line 1330
    :goto_2
    array-length v3, v7

    if-ge v0, v3, :cond_6

    .line 1331
    aget-char v3, v7, v0

    if-lt v3, v11, :cond_2

    aget-char v3, v7, v0

    if-le v3, v12, :cond_4

    :cond_2
    aget-char v3, v7, v0

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    aget-char v3, v7, v0

    const/16 v4, 0x66

    if-le v3, v4, :cond_4

    :cond_3
    aget-char v3, v7, v0

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    aget-char v3, v7, v0

    const/16 v4, 0x46

    if-gt v3, v4, :cond_0

    .line 1330
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1323
    goto :goto_1

    :cond_6
    move v2, v1

    .line 1337
    goto :goto_0

    .line 1339
    :cond_7
    add-int/lit8 v8, v3, -0x1

    move v6, v0

    move v3, v2

    move v4, v2

    move v5, v2

    move v0, v2

    .line 1344
    :goto_3
    if-lt v6, v8, :cond_8

    add-int/lit8 v9, v8, 0x1

    if-ge v6, v9, :cond_e

    if-eqz v3, :cond_e

    if-nez v0, :cond_e

    .line 1345
    :cond_8
    aget-char v9, v7, v6

    if-lt v9, v11, :cond_9

    aget-char v9, v7, v6

    if-gt v9, v12, :cond_9

    move v0, v1

    move v3, v2

    .line 1375
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1349
    :cond_9
    aget-char v9, v7, v6

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_a

    .line 1350
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v4, v1

    .line 1354
    goto :goto_4

    .line 1355
    :cond_a
    aget-char v9, v7, v6

    const/16 v10, 0x65

    if-eq v9, v10, :cond_b

    aget-char v9, v7, v6

    const/16 v10, 0x45

    if-ne v9, v10, :cond_c

    .line 1357
    :cond_b
    if-nez v5, :cond_0

    .line 1361
    if-eqz v0, :cond_0

    move v3, v1

    move v5, v1

    .line 1365
    goto :goto_4

    .line 1366
    :cond_c
    aget-char v0, v7, v6

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_d

    aget-char v0, v7, v6

    if-ne v0, v13, :cond_0

    .line 1367
    :cond_d
    if-eqz v3, :cond_0

    move v0, v2

    move v3, v2

    .line 1371
    goto :goto_4

    .line 1377
    :cond_e
    array-length v8, v7

    if-ge v6, v8, :cond_15

    .line 1378
    aget-char v8, v7, v6

    if-lt v8, v11, :cond_f

    aget-char v8, v7, v6

    if-gt v8, v12, :cond_f

    move v2, v1

    .line 1380
    goto/16 :goto_0

    .line 1382
    :cond_f
    aget-char v8, v7, v6

    const/16 v9, 0x65

    if-eq v8, v9, :cond_0

    aget-char v8, v7, v6

    const/16 v9, 0x45

    if-eq v8, v9, :cond_0

    .line 1386
    aget-char v8, v7, v6

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_10

    .line 1387
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    move v2, v0

    .line 1392
    goto/16 :goto_0

    .line 1394
    :cond_10
    if-nez v3, :cond_12

    aget-char v3, v7, v6

    const/16 v8, 0x64

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x44

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x66

    if-eq v3, v8, :cond_11

    aget-char v3, v7, v6

    const/16 v8, 0x46

    if-ne v3, v8, :cond_12

    :cond_11
    move v2, v0

    .line 1399
    goto/16 :goto_0

    .line 1401
    :cond_12
    aget-char v3, v7, v6

    const/16 v8, 0x6c

    if-eq v3, v8, :cond_13

    aget-char v3, v7, v6

    const/16 v6, 0x4c

    if-ne v3, v6, :cond_0

    .line 1404
    :cond_13
    if-eqz v0, :cond_14

    if-nez v5, :cond_14

    if-nez v4, :cond_14

    :goto_5
    move v2, v1

    goto/16 :goto_0

    :cond_14
    move v1, v2

    goto :goto_5

    .line 1411
    :cond_15
    if-nez v3, :cond_16

    if-eqz v0, :cond_16

    :goto_6
    move v2, v1

    goto/16 :goto_0

    :cond_16
    move v1, v2

    goto :goto_6
.end method

.method public static max(BBB)B
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1235
    if-le p1, p0, :cond_0

    .line 1236
    move p0, p1

    .line 1238
    :cond_0
    if-le p2, p0, :cond_1

    .line 1239
    move p0, p2

    .line 1241
    :cond_1
    return p0
.end method

.method public static max([B)B
    .locals 3
    .parameter "array"

    .prologue
    .line 985
    if-nez p0, :cond_0

    .line 986
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 988
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 993
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 994
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_2

    .line 995
    aget-byte v1, p0, v0

    .line 993
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_3
    return v1
.end method

.method public static max(DDD)D
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1257
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 5
    .parameter "array"

    .prologue
    .line 1013
    if-nez p0, :cond_0

    .line 1014
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_1
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 1021
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 1022
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1023
    const-wide/high16 v1, 0x7ff8

    .line 1030
    :cond_2
    return-wide v1

    .line 1025
    :cond_3
    aget-wide v3, p0, v0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_4

    .line 1026
    aget-wide v1, p0, v0

    .line 1021
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1273
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3
    .parameter "array"

    .prologue
    .line 1044
    if-nez p0, :cond_0

    .line 1045
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 1047
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 1052
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1053
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1054
    const/high16 v1, 0x7fc0

    .line 1061
    :cond_2
    return v1

    .line 1056
    :cond_3
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_4

    .line 1057
    aget v1, p0, v0

    .line 1052
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1199
    if-le p1, p0, :cond_0

    .line 1200
    move p0, p1

    .line 1202
    :cond_0
    if-le p2, p0, :cond_1

    .line 1203
    move p0, p2

    .line 1205
    :cond_1
    return p0
.end method

.method public static max([I)I
    .locals 3
    .parameter "array"

    .prologue
    .line 931
    if-nez p0, :cond_0

    .line 932
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 934
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 939
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 940
    aget v2, p0, v0

    if-le v2, v1, :cond_2

    .line 941
    aget v1, p0, v0

    .line 939
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_3
    return v1
.end method

.method public static max(JJJ)J
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1181
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1182
    move-wide p0, p2

    .line 1184
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1185
    move-wide p0, p4

    .line 1187
    :cond_1
    return-wide p0
.end method

.method public static max([J)J
    .locals 5
    .parameter "array"

    .prologue
    .line 904
    if-nez p0, :cond_0

    .line 905
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 907
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_1
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 912
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 913
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_2

    .line 914
    aget-wide v1, p0, v0

    .line 912
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_3
    return-wide v1
.end method

.method public static max(SSS)S
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1217
    if-le p1, p0, :cond_0

    .line 1218
    move p0, p1

    .line 1220
    :cond_0
    if-le p2, p0, :cond_1

    .line 1221
    move p0, p2

    .line 1223
    :cond_1
    return p0
.end method

.method public static max([S)S
    .locals 3
    .parameter "array"

    .prologue
    .line 958
    if-nez p0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 961
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_1
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 966
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 967
    aget-short v2, p0, v0

    if-le v2, v1, :cond_2

    .line 968
    aget-short v1, p0, v0

    .line 966
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 972
    :cond_3
    return v1
.end method

.method public static min(BBB)B
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1129
    if-ge p1, p0, :cond_0

    .line 1130
    move p0, p1

    .line 1132
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1133
    move p0, p2

    .line 1135
    :cond_1
    return p0
.end method

.method public static min([B)B
    .locals 3
    .parameter "array"

    .prologue
    .line 813
    if-nez p0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    .line 821
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 822
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 823
    aget-byte v1, p0, v0

    .line 821
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_3
    return v1
.end method

.method public static min(DDD)D
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1151
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 5
    .parameter "array"

    .prologue
    .line 841
    if-nez p0, :cond_0

    .line 842
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_1
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 849
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 850
    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 851
    const-wide/high16 v1, 0x7ff8

    .line 858
    :cond_2
    return-wide v1

    .line 853
    :cond_3
    aget-wide v3, p0, v0

    cmpg-double v3, v3, v1

    if-gez v3, :cond_4

    .line 854
    aget-wide v1, p0, v0

    .line 849
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1167
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3
    .parameter "array"

    .prologue
    .line 872
    if-nez p0, :cond_0

    .line 873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 880
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 881
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    const/high16 v1, 0x7fc0

    .line 889
    :cond_2
    return v1

    .line 884
    :cond_3
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_4

    .line 885
    aget v1, p0, v0

    .line 880
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1093
    if-ge p1, p0, :cond_0

    .line 1094
    move p0, p1

    .line 1096
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1097
    move p0, p2

    .line 1099
    :cond_1
    return p0
.end method

.method public static min([I)I
    .locals 3
    .parameter "array"

    .prologue
    .line 759
    if-nez p0, :cond_0

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_1
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 767
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 768
    aget v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 769
    aget v1, p0, v0

    .line 767
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_3
    return v1
.end method

.method public static min(JJJ)J
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1075
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1076
    move-wide p0, p2

    .line 1078
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1079
    move-wide p0, p4

    .line 1081
    :cond_1
    return-wide p0
.end method

.method public static min([J)J
    .locals 5
    .parameter "array"

    .prologue
    .line 732
    if-nez p0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 735
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_1
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 740
    const/4 v0, 0x1

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 741
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_2

    .line 742
    aget-wide v1, p0, v0

    .line 740
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_3
    return-wide v1
.end method

.method public static min(SSS)S
    .locals 0
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 1111
    if-ge p1, p0, :cond_0

    .line 1112
    move p0, p1

    .line 1114
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1115
    move p0, p2

    .line 1117
    :cond_1
    return p0
.end method

.method public static min([S)S
    .locals 3
    .parameter "array"

    .prologue
    .line 786
    if-nez p0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 793
    :cond_1
    const/4 v0, 0x0

    aget-short v1, p0, v0

    .line 794
    const/4 v0, 0x1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 795
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_2

    .line 796
    aget-short v1, p0, v0

    .line 794
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    :cond_3
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .parameter "str"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 323
    if-nez p0, :cond_0

    .line 329
    .end local p1
    :goto_0
    return p1

    .line 327
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "str"

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 273
    if-nez p0, :cond_0

    .line 279
    .end local p1
    :goto_0
    return-wide p1

    .line 277
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "str"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 221
    if-nez p0, :cond_0

    .line 227
    .end local p1
    :goto_0
    return p1

    .line 225
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .parameter "str"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 126
    .end local p1
    :goto_0
    return p1

    .line 124
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .parameter "str"

    .prologue
    .line 148
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 169
    if-nez p0, :cond_0

    .line 175
    .end local p1
    :goto_0
    return-wide p1

    .line 173
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .parameter "str"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .parameter "str"
    .parameter "defaultValue"

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 378
    .end local p1
    :goto_0
    return p1

    .line 376
    .restart local p1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
