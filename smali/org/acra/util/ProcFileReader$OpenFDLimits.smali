.class public Lorg/acra/util/ProcFileReader$OpenFDLimits;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# instance fields
.field public final hardLimit:Ljava/lang/String;

.field public final softLimit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "softLimit"
    .parameter "hardLimit"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    .line 63
    return-void
.end method
