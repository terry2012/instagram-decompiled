.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .locals 1
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .locals 7
    .parameter "count"
    .parameter "start"
    .parameter "end"
    .parameter "letters"
    .parameter "numbers"

    .prologue
    .line 163
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .locals 7
    .parameter "count"
    .parameter "start"
    .parameter "end"
    .parameter "letters"
    .parameter "numbers"
    .parameter "chars"

    .prologue
    .line 187
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 8
    .parameter "count"
    .parameter "start"
    .parameter "end"
    .parameter "letters"
    .parameter "numbers"
    .parameter "chars"
    .parameter "random"

    .prologue
    const v7, 0xdc00

    const v6, 0xd800

    const/16 v5, 0x80

    .line 225
    if-nez p0, :cond_0

    .line 226
    const-string v1, ""

    .line 280
    :goto_0
    return-object v1

    .line 227
    :cond_0
    if-gez p0, :cond_1

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested random string length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is less than 0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 231
    const/16 p2, 0x7b

    .line 232
    const/16 p1, 0x20

    .line 233
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 234
    const/4 p1, 0x0

    .line 235
    const p2, 0x7fffffff

    .line 239
    :cond_2
    new-array v2, p0, [C

    .line 240
    sub-int v3, p2, p1

    move v0, p0

    .line 242
    .end local p0
    .local v0, count:I
    :goto_1
    add-int/lit8 p0, v0, -0x1

    .end local v0           #count:I
    .restart local p0
    if-eqz v0, :cond_d

    .line 244
    if-nez p5, :cond_6

    .line 245
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p1

    int-to-char v1, v1

    .line 249
    :goto_2
    if-eqz p3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    if-eqz p4, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    if-nez p3, :cond_c

    if-nez p4, :cond_c

    .line 252
    :cond_5
    if-lt v1, v7, :cond_8

    const v4, 0xdfff

    if-gt v1, v4, :cond_8

    .line 253
    if-nez p0, :cond_7

    .line 254
    add-int/lit8 p0, p0, 0x1

    :goto_3
    move v0, p0

    .line 279
    .end local p0
    .restart local v0       #count:I
    goto :goto_1

    .line 247
    .end local v0           #count:I
    .restart local p0
    :cond_6
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, p1

    aget-char v1, p5, v1

    goto :goto_2

    .line 257
    :cond_7
    aput-char v1, v2, p0

    .line 258
    add-int/lit8 p0, p0, -0x1

    .line 259
    invoke-virtual {p6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v6

    int-to-char v1, v1

    aput-char v1, v2, p0

    goto :goto_3

    .line 261
    :cond_8
    if-lt v1, v6, :cond_a

    const v4, 0xdb7f

    if-gt v1, v4, :cond_a

    .line 262
    if-nez p0, :cond_9

    .line 263
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 266
    :cond_9
    invoke-virtual {p6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v7

    int-to-char v4, v4

    aput-char v4, v2, p0

    .line 267
    add-int/lit8 p0, p0, -0x1

    .line 268
    aput-char v1, v2, p0

    goto :goto_3

    .line 270
    :cond_a
    const v4, 0xdb80

    if-lt v1, v4, :cond_b

    const v4, 0xdbff

    if-gt v1, v4, :cond_b

    .line 272
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 274
    :cond_b
    aput-char v1, v2, p0

    goto :goto_3

    .line 277
    :cond_c
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 280
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "count"
    .parameter "chars"

    .prologue
    const/4 v1, 0x0

    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .locals 1
    .parameter "count"
    .parameter "letters"
    .parameter "numbers"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .locals 7
    .parameter "count"
    .parameter "chars"

    .prologue
    const/4 v1, 0x0

    .line 316
    if-nez p1, :cond_0

    .line 317
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    array-length v2, p1

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .locals 1
    .parameter "count"

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 83
    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .locals 2
    .parameter "count"

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
