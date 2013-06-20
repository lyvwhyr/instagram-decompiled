.class Lcom/a/a/a/i;
.super Lcom/a/a/a/h;
.source "Joiner.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/a/a/a/h;


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 188
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/i;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/i;->b:Lcom/a/a/a/h;

    invoke-virtual {v0, p1}, Lcom/a/a/a/h;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method
