.class public abstract Lcom/a/a/a/x;
.super Ljava/lang/Object;
.source "Ticker.java"


# static fields
.field private static final a:Lcom/a/a/a/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/a/a/a/y;

    invoke-direct {v0}, Lcom/a/a/a/y;-><init>()V

    sput-object v0, Lcom/a/a/a/x;->a:Lcom/a/a/a/x;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/a/a/a/x;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/a/a/a/x;->a:Lcom/a/a/a/x;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
