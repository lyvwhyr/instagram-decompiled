.class public Lorg/acra/util/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getOpenFDCount()I
    .locals 2

    .prologue
    .line 23
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return v0

    .line 24
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static getOpenFDLimits()Lorg/acra/util/ProcFileReader$OpenFDLimits;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/self/limits"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    const-string v1, "Max open files"

    const/16 v3, 0x1388

    invoke-virtual {v2, v1, v3}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    if-nez v1, :cond_1

    .line 49
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 43
    :cond_1
    :try_start_2
    new-instance v1, Lorg/acra/util/ProcFileReader$OpenFDLimits;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/acra/util/ProcFileReader$OpenFDLimits;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 49
    :goto_1
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 49
    :goto_2
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    .line 50
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v0

    .line 49
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 46
    :catch_2
    move-exception v1

    goto :goto_2

    .line 44
    :catch_3
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
