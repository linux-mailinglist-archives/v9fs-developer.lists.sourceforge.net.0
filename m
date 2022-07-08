Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C0C56B09E
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 04:27:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9dhv-0005Kn-SO; Fri, 08 Jul 2022 02:27:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ericvh@gmail.com>) id 1o9dht-0005Kc-T8
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 02:27:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ry+CvXEw38LzCHBN47/ZaI9yWS8cOmskCKI1t4OhHyk=; b=B4eJl+VEDq5dC7uiOIzDzLg2gg
 30J8YYRl6nzddhBXKmt+RrXvA2/RmpYGh8A6Z3GLVe+RFijTZACyQLcrjtmM5GNw4hyidFoyrLpWs
 U0dZrwkiFRPXfiBahVnBVA5dSmqGwLL/F1xvc/wGzqYA4L2lDwRowjROYHTJA+YAsH3E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ry+CvXEw38LzCHBN47/ZaI9yWS8cOmskCKI1t4OhHyk=; b=Gb+e11wJv1cFJ4WpBC59aERfcs
 MNZ87ZJNDO3HZFrpmaWl52WmAIK51CObjOTsCG/imX90ABpnbnwfRDItSjTbx8tpDtDvSd3q2Ruvr
 R6+QCMCqCuvJrGSdXUCTofm9GrqAoOBKvb8SKu2qKFYOSFFBOVghUj9Jlf14NU5AxrnM=;
Received: from mail-oa1-f46.google.com ([209.85.160.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o9dhq-00AO0e-2F
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 02:27:02 +0000
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-10be0d7476aso20799235fac.2
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 07 Jul 2022 19:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ry+CvXEw38LzCHBN47/ZaI9yWS8cOmskCKI1t4OhHyk=;
 b=j1ROjobdI6aHt33gmESmGNmJnIMH7dysokOX6N0n0WNROss9Y22KtjtGr7uaqa00Bp
 Eneq7kKmAp3+opftQdCx/d/sR/DMFR+HzJ8M5Is/cXAzFNWjmV8G66HaRLjDXyGj3FUw
 UGfXi8udg38mzeytNOBEf4ftBch7FZNi6FhhsiiG22HZuxgugGx2rGYD70Mj5s81z0Ii
 wVb0CInJkQhtwMgoFO3BN6M8KEg5WK1MS8qMpEZJjAQh34fj3jqt+mrexYpREKvCLITH
 xok26zIZJ/uROpxjXYdnE+WoPcXPNZDzN0EdYeR1ELKKT1prbG7jBgiYZxgacpE5DRKp
 rvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ry+CvXEw38LzCHBN47/ZaI9yWS8cOmskCKI1t4OhHyk=;
 b=itqFX6+Vjx8Aa/I0z8980+Gn2CtkoVCaYbFngwoSEuFzpXsRXAbQoehRdufKkX+RXy
 3Zg8WSn8vB4V+m3zNTunYfvNG4xdSGOW48Mvvdik+U+FPU6kNWdKFwJ8s0cL/QJqnSAr
 auCReGZF7rq846MZBaRaEP6/WZ5IPYlMh3ptQDLkDI3d9cbRf3nvL7MgGvLdE/LaGdZR
 rNO0RsRmGnPFm49W5U/yncyMkkWNAD9dEzVLlmbDObM6jm1m5GezywqH4dcdC0wsN0N8
 s6LDldgQ65SK6BgRSwBEDgdwdg3dum9xpZlZQu210dhPnBSbMg492q6cAwyQ6BboPZLn
 tjjA==
X-Gm-Message-State: AJIora8E3Yj8718A2/hlJ+CjIJiwWg1b6YsJi5Qz762BYbIrfdzY9Ha3
 N9PZSsxzJnV6FgeI+qLq2ygy2kQwwWL6AOxK4iE=
X-Google-Smtp-Source: AGRyM1tXqiSyVwEtq56Xe3XMyI0Te+QZ1pQPBJ0SVrSoRn5XnH3cDiODPFqcCrKm0l0Mccx6+etJ+exdU9N7o0FEvUQ=
X-Received: by 2002:a05:6870:14c7:b0:f2:c44c:d054 with SMTP id
 l7-20020a05687014c700b000f2c44cd054mr629942oab.70.1657247212209; Thu, 07 Jul
 2022 19:26:52 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <7534209.h2h7kyIpJd@silver>
 <CAFkjPT=GAoViYd0E7CZQDq3ZjhmYT0DsBytfZXnE10JL0P8O-Q@mail.gmail.com>
 <YseFPgFoLpjOGq40@codewreck.org>
In-Reply-To: <YseFPgFoLpjOGq40@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 8 Jul 2022 12:26:40 +1000
Message-ID: <CAFkjPTngeFh=0mPVW-Yf1Sxkxp_HDNUeANndoYN3-eU9_rGLuQ@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  kvmtool might be the easiest I guess - I’m traveling right
    now but I can try and find some others. The arm fast models have free versions
    that are downloadable as well. I know I’ve seem some other [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ericvh[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.46 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.46 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1o9dhq-00AO0e-2F
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

a3ZtdG9vbCBtaWdodCBiZSB0aGUgZWFzaWVzdCBJIGd1ZXNzIC0gSeKAmW0gdHJhdmVsaW5nIHJp
Z2h0IG5vdyBidXQgSSBjYW4KdHJ5IGFuZCBmaW5kIHNvbWUgb3RoZXJzLiAgVGhlIGFybSBmYXN0
IG1vZGVscyBoYXZlIGZyZWUgdmVyc2lvbnMgdGhhdCBhcmUKZG93bmxvYWRhYmxlIGFzIHdlbGwu
ICBJIGtub3cgSeKAmXZlIHNlZW0gc29tZSBvdGhlciBsZXNzLXRyYWRpdGlvbmFsIHVzZXMgb2YK
dmlydGlvIHBhcnRpY3VsYXJseSBpbiBsaWJvcyBkZXBsb3ltZW50cyBidXQgd2lsbCB0YWtlIHNv
bWUgdGltZSB0byByYXR0bGUKdGhvc2UgZnJvbSBteSBtZW1vcnkuCgpPbiBGcmksIEp1bCA4LCAy
MDIyIGF0IDExOjE2IEFNIERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNtYWRldXNAY29kZXdyZWNrLm9y
Zz4Kd3JvdGU6Cgo+IEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGUgb24gRnJpLCBKdWwgMDgsIDIw
MjIgYXQgMTA6NDQ6NDVBTSArMTAwMDoKPiA+IHRoZXJlIGFyZSBvdGhlciA5cCB2aXJ0aW8gc2Vy
dmVycyAtIHNldmVyYWwgZW11bGF0aW9uIHBsYXRmb3JtcyBzdXBwb3J0Cj4gaXQKPiA+IHNhbnMg
cWVtdS4KPgo+IFdvdWxkIHlvdSBoYXBwZW4gdG8gaGF2ZSBhbnkgY29uY3JldGUgZXhhbXBsZT8K
PiBJJ2QgYmUgY3VyaW91cyBpZiB0aGVyZSBhcmUgc29tZSB0aGF0J2QgYmUgZWFzeSB0byBzZXR1
cCBmb3IgdGVzdCBmb3IKPiBleGFtcGxlOyBteSBjdXJyZW50IHZhbGlkYXRpb24gc2V0dXAgbGFj
a3MgYSBiaXQgb2YgZGl2ZXJzaXR5Li4uCj4KPiBJIGZvdW5kIGh0dHBzOi8vZ2l0aHViLmNvbS9t
b2J5L2h5cGVya2l0IGZvciBPU1ggYnV0IHRoYXQgZG9lc24ndCByZWFsbHkKPiBoZWxwIG1lLCBh
bmQgY2FuJ3Qgc2VlIG11Y2ggZWxzZSByZWxldmFudCBpbiBhIHF1aWNrIHNlYXJjaAo+Cj4gLS0K
PiBEb21pbmlxdWUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
