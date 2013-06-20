.class public Lcom/instagram/util/ApplicationUuidHelper;
.super Ljava/lang/Object;
.source "ApplicationUuidHelper.java"


# static fields
.field public static final ANDROID_UUID_PREFIX:Ljava/lang/String; = "android-"

.field public static final EXTERNAL_INSTALLATION_FILE:Ljava/lang/String; = "/mnt/sdcard/.profig.os"

.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field public static final LOG_TAG:Ljava/lang/String; = "ApplicationUuidHelper"

.field private static sID:Ljava/lang/String;

.field private static sUUIDSeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/instagram/util/ApplicationUuidHelper;->sUUIDSeed:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateOldStyleUuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/.profig.os"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "INSTALLATION"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    invoke-static {v0}, Lcom/instagram/util/ApplicationUuidHelper;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    .line 61
    const-string v2, "ApplicationUuidHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "External installation file found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 67
    :cond_0
    invoke-static {v0, v1}, Lcom/instagram/util/ApplicationUuidHelper;->initializeAndWriteUuid(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    const-string v0, "ApplicationUuidHelper"

    const-string v2, "External installation file found, no internal file found"

    invoke-static {v0, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instagram/util/ApplicationUuidHelper;->writeInstallationFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    invoke-static {v1}, Lcom/instagram/util/ApplicationUuidHelper;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    .line 74
    const-string v2, "ApplicationUuidHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal installation file found, no external file found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 80
    :cond_4
    invoke-static {v0, v1}, Lcom/instagram/util/ApplicationUuidHelper;->initializeAndWriteUuid(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_5
    sget-object v1, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/instagram/util/ApplicationUuidHelper;->writeInstallationFileOptional(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_6
    invoke-static {v0, v1}, Lcom/instagram/util/ApplicationUuidHelper;->initializeAndWriteUuid(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getCurrentRandomUUID()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 178
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    array-length v2, v1

    if-ge v2, v8, :cond_0

    .line 186
    :goto_0
    return-object v0

    .line 183
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/instagram/util/ApplicationUuidHelper;->sUUIDSeed:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x663

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 185
    aget-object v1, v1, v7

    const-string v4, "%s%s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized id(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-class v1, Lcom/instagram/util/ApplicationUuidHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/instagram/util/ApplicationUuidHelper;->isFaultyId(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/instagram/util/ApplicationUuidHelper;->generateOldStyleUuid(Landroid/content/Context;)Ljava/lang/String;

    .line 38
    :cond_1
    sget-object v0, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initializeAndWriteUuid(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "externalInstallationFile"
    .parameter "internalInstallationFile"

    .prologue
    .line 108
    invoke-static {}, Lcom/instagram/util/ApplicationUuidHelper;->getCurrentRandomUUID()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "ApplicationUuidHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New device found, writing install files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/instagram/util/ApplicationUuidHelper;->sID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1, v0}, Lcom/instagram/util/ApplicationUuidHelper;->writeInstallationFile(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    invoke-static {p0, v0}, Lcom/instagram/util/ApplicationUuidHelper;->writeInstallationFileOptional(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/instagram/util/ApplicationUuidHelper;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isFaultyId(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "securityId"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/c;->faulty_security_ids:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "installation"

    .prologue
    .line 116
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 119
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static seedUUID()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/instagram/util/ApplicationUuidHelper;->sUUIDSeed:J

    .line 152
    return-void
.end method

.method private static writeInstallationFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "installation"
    .parameter "id"

    .prologue
    .line 124
    const-string v0, "ApplicationUuidHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing enforced install file with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    invoke-static {v0, p1}, Lcom/instagram/util/ApplicationUuidHelper;->writeToOutputStream(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private static writeInstallationFileOptional(Ljava/io/File;Ljava/lang/String;)V
    .locals 3
    .parameter "installation"
    .parameter "id"

    .prologue
    .line 131
    :try_start_0
    const-string v0, "ApplicationUuidHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing optional install file with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    invoke-static {v0, p1}, Lcom/instagram/util/ApplicationUuidHelper;->writeToOutputStream(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    const-string v0, "ApplicationUuidHelper"

    const-string v1, "Unable to write to install file"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeToOutputStream(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "out"
    .parameter "id"

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
