.class public Lcom/instagram/android/model/Heading;
.super Ljava/lang/Object;
.source "Heading.java"


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/instagram/android/model/Heading;->title:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/instagram/android/model/Heading;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/instagram/android/model/Heading;->title:Ljava/lang/String;

    .line 19
    return-void
.end method
