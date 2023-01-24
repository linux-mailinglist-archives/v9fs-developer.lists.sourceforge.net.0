Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EE52B678EDF
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 04:12:35 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK9jf-0006ue-5d;
	Tue, 24 Jan 2023 03:12:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pK9jd-0006uX-Mb
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mrhwz8i7hnV836r0Hvh+zt/sJ+jDT49TG7kTftCxWCY=; b=ZULpefG52BBLBNgc1BzOD1x3Yz
 grOJosrPNfM1X/OlGT3hoJi/oQTAeULSzMw65qXZ4V+OeY9SC+38xx2S2xZ3S3bzf62++chFYl2xf
 TW3RSNThZ5EiUqlD85wQXE1+ktHe8XJBepqNMOf80ULtwKh/nwIDEFUdBgr9B0/i4D4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Mrhwz8i7hnV836r0Hvh+zt/sJ+jDT49TG7kTftCxWCY=; b=Go6H6km96n267g6+3pWVxuTbvs
 u73W2s2E+jxy4uY+YLTDIZSQY3RVL6kPX3rQp97L/Hao13ncBpRAAVmuRSv3Q5su/kWu9jdf7MFvM
 GWHLoUfi06qds66dVXTEeZpejazcXOrZjcVH/q8lhzkUaAGHA3eT91RnDIWfx5wpAKnA=;
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pK9jb-0005Hw-1D for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 03:12:32 +0000
Received: by mail-wr1-f54.google.com with SMTP id b7so12602147wrt.3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 23 Jan 2023 19:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Mrhwz8i7hnV836r0Hvh+zt/sJ+jDT49TG7kTftCxWCY=;
 b=kd7B7x78hfUtHv9HLzga2hdXFqweRW+3URkBBVPZAzSB2ZFYGWYmyGj1QZ3mMPA96K
 9j17p5fWhwmYHlTAjPA8OwR5h97JgsAdZi3NJ41e9aQwPgYktEwzBU1Gh1RR/E6E662N
 NCU7G61Ispb0hFLkOxKcBdiPudcc2BQP0c6+/+kwYw8qN8MLNxJpwInO50x0OSf1HdBi
 ttF0OKBoTmHjWlHw9Sl+riogU7IsstIGeW7WrusPl/dvW3fflkwmsysnyPIOTwaAZvbY
 zdlspYNpbZTkb9E7gA2V+RbRdNnmZ+wEnG/A7DytVoUdBThL74vemeINQPeJJ62JhoAz
 MLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Mrhwz8i7hnV836r0Hvh+zt/sJ+jDT49TG7kTftCxWCY=;
 b=gMxOLX71cog9LXZ1HwlTHvoAzIO1Oihiek6KkIWMHnYDu4LreTPNVysf+Wv+qZqwLk
 YfK1TI0r6TOla5f8Sn42ZH7NsTVMz6QYGZcmuKTgFbVR1hV6tSzk+2np7MPzrrcolRgC
 JTkqxNJ8yMxQy8ZLBc6Tpy009JPZS+5grJjGs565GkC02LpSj6JydvQnadz1m4sGp+yi
 xNSo61pMXl1D2ZYTl4qkzW/Zu7fRtUaq77hJXvTat21cqV8sZ6axHAv1W33vwq6kioAL
 aCPwYgunKm2OQBL5KmwVWCvITuezqNtf0qDBkYkpxtxnlaZzmBYkPJ6oVXk9JPM8dlt7
 WO+w==
X-Gm-Message-State: AFqh2kqgPhGnOhVIbyci2U3wqquOVwMY3x0qpprAmfvT7lidtw5cKsPi
 +4E4580ZheY2BaFedto/jHfPh4YvX0TkL0THe8V4OKtPPtI=
X-Google-Smtp-Source: AMrXdXuX4sn6xi6CRZYNAyr5oieu6AU+ygdJdRXo7b2bexQj494ZcPgGC03vjGbijGUEIY5uhGmy/v9obkQgZLSOhn4=
X-Received: by 2002:a5d:458c:0:b0:2af:8d8b:7264 with SMTP id
 p12-20020a5d458c000000b002af8d8b7264mr685704wrq.46.1674529944369; Mon, 23 Jan
 2023 19:12:24 -0800 (PST)
MIME-Version: 1.0
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
 <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
 <Y89HQXu90ea6Ed4r@codewreck.org>
In-Reply-To: <Y89HQXu90ea6Ed4r@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 23 Jan 2023 21:12:13 -0600
Message-ID: <CAFkjPTkX2t_YOEENVPEggV-yhyjYgBrYjYLYCH9JVeTifeap3g@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: 0.8 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: (removing fsdevel and lkml for now) Was just looking at this,
 I imagine my 9p-next branch timed out of being included in linux-next about
 a decade ago ;) I could re-establish, but I think it's probably best we keep
 a single 9p funnel in [...] 
 Content analysis details:   (0.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.54 listed in list.dnswl.org]
 1.0 FREEMAIL_REPLY         From and body contain different freemails
X-Headers-End: 1pK9jb-0005Hw-1D
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Ron Minnich <rminnich@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

KHJlbW92aW5nIGZzZGV2ZWwgYW5kIGxrbWwgZm9yIG5vdykKCldhcyBqdXN0IGxvb2tpbmcgYXQg
dGhpcywgSSBpbWFnaW5lIG15IDlwLW5leHQgYnJhbmNoIHRpbWVkIG91dCBvZgpiZWluZyBpbmNs
dWRlZCBpbiBsaW51eC1uZXh0IGFib3V0IGEgZGVjYWRlIGFnbyA7KSAgSSBjb3VsZApyZS1lc3Rh
Ymxpc2gsIGJ1dCBJIHRoaW5rIGl0J3MgcHJvYmFibHkgYmVzdCB3ZSBrZWVwIGEgc2luZ2xlIDlw
CmZ1bm5lbCBpbnRvIGxpbnV4LW5leHQgYW5kIHRoYXQgcHJvYmFibHkgbWVhbnMgeW91cnMgZm9y
IG5vdyAodGhlcmUKZG9lc24ndCBzZWVtIHRvIGJlIG11Y2ggcHJlY2VkZW50IGluIE5leHQvVHJl
ZXMgZm9yCm11bHRpLW1haW50YWluZXJzKS4gIFdlIGNvdWxkIHRyeSBhbmQgY29vcmRpbmF0ZSBh
cm91bmQgYSBzaGFyZWQKZ2l0aHViIGZvci1uZXh0IHJlcG8gYW5kIHJlcXVpcmUgYXQgbGVhc3Qg
b25lIG90aGVyIG1haW50YWluZXIgcmV2aWV3CnBhdGNoZXMgYmVmb3JlIHN1Ym1pc3Npb24gdG8g
Zm9yLW5leHQgYW5kIHRoZW4gbWlycm9yIHRoYXQgdG8Ka2VybmVsLm9yZyAtLSBtYWlubHkgbG9v
a2luZyB0byBtaW5pbWl6ZSB3b3JrbG9hZCBmb3IgZm9sa3MgaGVyZSwgb3Blbgp0byBvdGhlciBp
ZGVhcy4KCiAgICAgICAtZXJpYwoKCk9uIE1vbiwgSmFuIDIzLCAyMDIzIGF0IDk6MDEgUE0gPGFz
bWFkZXVzQGNvZGV3cmVjay5vcmc+IHdyb3RlOgo+Cj4gZXZhbmhlbnNiZXJnZW5AaWNsb3VkLmNv
bSB3cm90ZSBvbiBNb24sIEphbiAyMywgMjAyMyBhdCAwODozMzo0NlBNIC0wNjAwOgo+ID4gSeKA
mW0gZmluZSB3aXRoIGZ1bm5lbGluZyB0aGVzZSB0aHJvdWdoIERvbWluaXF1ZSBzaW5jZSBoZeKA
mXMgY3VycmVudGx5Cj4gPiB0aGUgYWN0aXZlIG1haW50YWluZXIsIGJ1dCBJ4oCZdmUgYWxzbyBy
ZS1lc3RhYmxpc2hlZCBrZXJuZWwub3JnCj4gPiA8aHR0cDovL2tlcm5lbC5vcmcvPiBjcmVkZW50
aWFscyBzbyBJIGNhbiBmaWVsZCB0aGUgcHVsbC1yZXF1ZXN0IGlmCj4gPiBkZXNpcmVkLgo+Cj4g
SSdtIGhhcHB5IGVpdGhlciB3YXk7IEkndmUgaGFkIGEgKHRvbyBxdWljayB0byByZWFsbHkgY2Fs
bCByZXZpZXcpIGxvb2sKPiBhdCB0aGUgY29kZSBpdHNlbGYgYW5kIGl0IG1vc3RseSBtYWtlcyBz
ZW5zZSB0byBtZSwgYW5kIGFzIHlvdSBwb2ludGVkCj4gb3V0IHNvbWUgd291bGQgd2FycmFudCBh
IENjIHN0YWJsZUAgYW5kIG5vdCB3YWl0aW5nIGlmIEkgaGFkIHRpbWUgdG8gZG8KPiB0aGlzIHNl
cmlvdXNseSwgYnV0IEknbSBub3Qgc3VyZSBJJ2xsIG1ha2UgaXQgaWYgdGhpcyBuZWVkcyB0byB3
YWl0IGZvcgo+IG1lLgo+Cj4gRG8geW91IGFsc28gaGF2ZSBhIHRyZWUgdGhhdCBnb2VzIGluIC1u
ZXh0ID8gSSB0aGluayBJIGFza2VkIGJlZm9yZSBidXQKPiBsb3N0IHlvdXIgcmVwbHksIHNvcnJ5
Lgo+IElmIG5vdCBpdCdsbCBwcm9iYWJseSBiZSBlYXNpZXIgZm9yIG1lIHRvIHBpY2sgaXQgdXAg
dGhpcyBjeWNsZSwgYnV0Cj4gdGhhdCdzIGFib3V0IHRoZSBvbmx5IHJlYXNvbiBJJ2Qgc2VlIGZv
ciBtZSB0byB0YWtlIHRoZSBwYXRjaGVzIGFzCj4gdGhpbmdzIHN0YW5kLgo+Cj4gLS0KPiBEb21p
bmlxdWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
