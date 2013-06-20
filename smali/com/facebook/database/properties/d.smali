.class public Lcom/facebook/database/properties/d;
.super Ljava/lang/Object;
.source "DbPropertiesContract.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/a/a/a/v",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/a/a/a/v",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/facebook/database/properties/d;->a:Ljava/lang/Class;

    .line 59
    iput-object p2, p0, Lcom/facebook/database/properties/d;->b:Ljava/lang/String;

    .line 60
    return-void
.end method
