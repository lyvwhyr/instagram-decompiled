.class public Lcom/facebook/common/c/b;
.super Ljava/lang/Object;
.source "AppBuildInfoReader.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static a:Lcom/facebook/common/c/a;

.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/common/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "^[0-9]+L$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/c/b;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/c/c;)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/common/c/b;->b:Landroid/content/Context;

    .line 38
    invoke-static {p2}, Lcom/a/a/a/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/c/c;

    iput-object v0, p0, Lcom/facebook/common/c/b;->d:Lcom/facebook/common/c/c;

    .line 39
    iget-object v0, p0, Lcom/facebook/common/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/c/b;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static a(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 84
    const-string v1, "PST8PDT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 85
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lcom/facebook/common/c/b;->a:Lcom/facebook/common/c/a;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/facebook/common/c/b;

    new-instance v1, Lcom/facebook/common/c/c;

    invoke-direct {v1, p0}, Lcom/facebook/common/c/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/c/b;-><init>(Landroid/content/Context;Lcom/facebook/common/c/c;)V

    .line 112
    invoke-virtual {v0}, Lcom/facebook/common/c/b;->a()Lcom/facebook/common/c/a;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/c/b;->a:Lcom/facebook/common/c/a;

    .line 114
    :cond_0
    sget-object v0, Lcom/facebook/common/c/b;->a:Lcom/facebook/common/c/a;

    iget-object v0, v0, Lcom/facebook/common/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/common/c/b;->d:Lcom/facebook/common/c/c;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/common/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/common/c/b;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/facebook/common/c/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/common/c/b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/common/c/b;->a(Ljava/lang/String;)Lcom/facebook/common/c/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/common/c/a;
    .locals 7
    .parameter

    .prologue
    .line 56
    const-string v0, "com.facebook.versioncontrol.revision"

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    const-string v0, "com.facebook.versioncontrol.branch"

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    const-string v0, "com.facebook.build_time"

    invoke-direct {p0, v0, p1}, Lcom/facebook/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-wide/16 v3, 0x0

    .line 67
    const-string v5, ""

    .line 71
    invoke-static {v0}, Lcom/facebook/common/c/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    invoke-static {v0}, Lcom/facebook/common/c/b;->c(Ljava/lang/String;)J

    move-result-wide v3

    .line 73
    invoke-static {v3, v4}, Lcom/facebook/common/c/b;->a(J)Ljava/lang/String;

    move-result-object v5

    .line 76
    :cond_0
    new-instance v0, Lcom/facebook/common/c/a;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method
