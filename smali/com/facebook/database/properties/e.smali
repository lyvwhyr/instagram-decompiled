.class public Lcom/facebook/database/properties/e;
.super Ljava/lang/Object;
.source "DbPropertiesContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/facebook/database/properties/d;
    .locals 3
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 116
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 117
    new-instance v1, Lcom/facebook/database/properties/d;

    invoke-direct {v1, v2, v0}, Lcom/facebook/database/properties/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v1
.end method
