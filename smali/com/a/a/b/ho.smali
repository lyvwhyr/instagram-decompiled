.class final enum Lcom/a/a/b/ho;
.super Lcom/a/a/b/hn;
.source "SortedLists.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/b/hn;-><init>(Ljava/lang/String;ILcom/a/a/b/hm;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)I"
        }
    .end annotation

    .prologue
    .line 147
    add-int/lit8 v0, p1, -0x1

    return v0
.end method
