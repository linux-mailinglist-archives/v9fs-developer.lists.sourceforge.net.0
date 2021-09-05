Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E45AC401227
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Sep 2021 01:44:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mN1oP-0006r2-Rn; Sun, 05 Sep 2021 23:44:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ericvh@gmail.com>) id 1mN1oO-0006qr-Oz
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Sep 2021 23:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9a+q9ngtDqbF3WXfGH7MM26RyF3VcLIn0lp6D7s+SXw=; b=D1ghBkLeZa+IY5+C7j+5Jx72mq
 6r9GjLjXi53OjiKd/2dEXy7ubQZC+d87zeTILyan5HWmqK5vGu2SKPi2oH3qCYdx4LEQzLtfr9IXE
 mfYx0zfUjQSjnVQ9T7tqwAr7Uwzpftu/HMYzdhcYGN1h86x/h5d415gf3JCri33hZqYA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9a+q9ngtDqbF3WXfGH7MM26RyF3VcLIn0lp6D7s+SXw=; b=WMHi1wqaSnd6HS39Vc+UMwfSp6
 TxT/+F+22PURYVrbOVf/+KbL6SLPfITewT4vM1y8kP6ZhSN79XTqYQYO+FdgaZPfVFc8+W12/eNXV
 KS6YRVc1YQYUKiORLymBKFu5wTM9bQK8xeYgaY/Q9kScQUdD4a5BnAl3gO97DlHMHNT0=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mN1oM-0002bL-Ue
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Sep 2021 23:44:32 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 c19-20020a9d6153000000b0051829acbfc7so6625756otk.9
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 05 Sep 2021 16:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9a+q9ngtDqbF3WXfGH7MM26RyF3VcLIn0lp6D7s+SXw=;
 b=UX9ko45kfP/OrkAlaSWWBXvofafizkKIllrr0FvcZtkfuWx+jqC+T/TyP7SVaBke/C
 U+bmWuQ66JlHB4v64Ir9Zs4YRVQHmnzc2kR3ECubYilUdVbBTugnNtnmk1oMfUVaxJ20
 YYy5szeRHsC/HDPnZdnStdhXChIcfkacs+V/M/bF0Ngjv3RZwcGO6TLfOj1PxVdQH4uU
 hjc4mHuZjYFj7f0ZKk/0lTMp1IEgXOL+zpLSep/+l1wMjgQWPAw/6Xggse4L32wJlMOU
 hCrG5LaPhaHmdITIVGq0W3pRIWzb7TPUoyeZ3xIcagdmUzNnagSHZvjAb50/HjY+OReh
 Mt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9a+q9ngtDqbF3WXfGH7MM26RyF3VcLIn0lp6D7s+SXw=;
 b=mmETw9veVFjKd4nuyJpowFSQjmxHVQTQJqN+TnN/6XuHwHVWUB7BttErsi+cqBL9R7
 sIDitqPnfW6CNbvdPsWRniQJDVmganTP1MvJ7RKbQCEaGqNtyijtnfIvP4RM8eda/ydb
 UkEDXpFsOGyt2Mq6WcpyvZikUQLp4A4hC2ArZOqVnSxP54FrCADckQx7292d/jSlyWN2
 R4i51ZrbpM4VWK1IiDJRiRE7q5AxdrbXo1OR1aMnFIcozRawhoaSz2+8LA2xcvNju3HT
 3hRfB2NTBKbXTLF8osaAXihyi8BGwA7zQnQ1mSbSQ+cgU80YK9s1dQg8HI8xGMY5B8L4
 VD5A==
X-Gm-Message-State: AOAM531oi97pFkwsI2dTqrQDwJqpcyoQ0eEugwgOC5/WUgrzt9lW7iQf
 TD/wyY7cCExpBsdD4+cOE/QjsP2HEN9ZQFU0/7I=
X-Google-Smtp-Source: ABdhPJz1/7h9daFXW0wKDrZ15+kFRqd3am+5CP62F9GNAf4RYEK7yElvN8ocJ4PKuxW0Xewa2X5UFRFqP2m/pkxNSwE=
X-Received: by 2002:a05:6830:91:: with SMTP id
 a17mr9183040oto.189.1630885465131; 
 Sun, 05 Sep 2021 16:44:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1630770829.git.linux_oss@crudebyte.com>
 <61ea0f0faaaaf26dd3c762eabe4420306ced21b9.1630770829.git.linux_oss@crudebyte.com>
 <YTQB5jCbvhmCWzNd@codewreck.org> <1915472.2DI3jHSlUk@silver>
 <YTU7FJuooYSjISlq@codewreck.org>
In-Reply-To: <YTU7FJuooYSjISlq@codewreck.org>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 5 Sep 2021 18:44:13 -0500
Message-ID: <CAFkjPTkJFrqhCCHgUBsDiEVjpeJoKZ4gRy=G-4DpJo9xanpYaA@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: qemu.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ericvh[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.48 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mN1oM-0002bL-Ue
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH 2/2] net/9p: increase default msize to
 128k
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
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

dGhlcmUgd2lsbCBsaWtlbHkgYmUgYSB0cmFkZW9mZiB3aXRoIHRjcCBpbiB0ZXJtcyBvZiBsYXRl
bmN5IHRvIGZpcnN0Cm1lc3NhZ2Ugc28gd2hpbGUKYWJzb2x1dGUgYncgbWF5IGJlIGhpZ2hlciBw
cm9jZXNzaW5nIHRpbWUgbWF5IHN1ZmZlci4gIDhrIHdhcyBkZWZhdWx0IG1zaXplCnRvIG1vcmUg
Y2xvc2VseSBtYXRjaCBpdCB0byBqdW1ibyBmcmFtZXMgb24gYW4gZXRoZXJuZXQuICBvZiBjb3Vy
c2UgYWxsCnRoYXQgaW50dWl0aW9uIGlzIGNsb3NlIHRvIDMwIHllYXJzIG91dCBvZiBkYXRl4oCm
LgoKT24gU3VuLCBTZXAgNSwgMjAyMSBhdCA0OjQ4IFBNIERvbWluaXF1ZSBNYXJ0aW5ldCA8YXNt
YWRldXNAY29kZXdyZWNrLm9yZz4Kd3JvdGU6Cgo+IENocmlzdGlhbiBTY2hvZW5lYmVjayB3cm90
ZSBvbiBTdW4sIFNlcCAwNSwgMjAyMSBhdCAwMzozMzoxMVBNICswMjAwOgo+ID4gPiBTdWJqZWN0
OiBbUEFUQ0hdIG5ldC85cDogaW5jcmVhc2UgdGNwIG1heCBtc2l6ZSB0byAxTUIKPiA+Cj4gPiBZ
ZXMsIG1ha2VzIHNlbnNlLgo+ID4KPiA+IElzIHRoZSBUQ1AgdHJhbnNwb3J0IGRyaXZlciBvZiB0
aGUgTGludXggOXAgY2xpZW50IHNvbWV3aGF0IGVxdWFsbHkKPiBtYXR1cmUgdG8KPiA+IHRoZSB2
aXJ0aW8gdHJhbnNwb3J0IGRyaXZlcj8gQmVjYXVzZSBJIHN0aWxsIGhhdmUgbWFjT1Mgc3VwcG9y
dCBmb3IgOXAKPiBpbiBRRU1VCj4gPiBvbiBteSBUT0RPIGxpc3QgYW5kIGFjY29yZGluZ2x5IGEg
ZGVjaXNpb24gZm9yIGEgc3BlY2lmaWMgdHJhbnNwb3J0IHR5cGUKPiBmb3IKPiA+IG1hY09TIHdp
bGwgYmUgbmVlZGVkLgo+Cj4gSSdkIHNheSBpdCBzaG91bGQgYmUganVzdCBhYm91dCBhcyBzdGFi
bGUgYXMgdmlydGlvLi4gSXQncyBkZWZpbml0ZWx5Cj4gZ2V0dGluZyBhIGxvdCBvZiB0ZXN0cyBs
aWtlIHN5emNhbGxlciBhcyBpdCdzIGVhc3kgdG8gb3BlbiBhbiBhcmJpdHJhcnkKPiBmZCBhbmQg
cGFzcyB0aGF0IHRvIGtlcm5lbCBmb3IgZnV6emluZy4KPgo+IFBlcmZvcm1hbmNlLXdpc2UgeW91
IHdvbid0IGhhdmUgemVyby1jb3B5LCBhbmQgdGhlIG1vbm9saXRpYyBtZW1vcnkKPiBibG9ja3Mg
cmVxdWlyZW1lbnQgaXMgdGhlIHNhbWUsIHNvIGl0IHdvbid0IGJlIGFzIGdvb2QgYXMgdmlydGlv
IGJ1dCBpdAo+IGNhbiBwcm9iYWJseSBiZSB1c2VkLiBUaGUgcHJvYmxlbSB3aWxsIG1vcmUgYmUg
b25lIG9mIHNldHRpbmcgLS0gZm9yCj4gdXNlciBuZXR3b3JraW5nIHdlIGNhbiBhbHdheXMgdXNl
IHFlbXUncyBuZXR3b3JraW5nIGltcGxlbWVudGF0aW9uLCBidXQKPiBmb3IgcGFzc3Rocm91Z2gg
b3IgdGFwIHFlbXUgd29uJ3QgZWFzaWx5IGJlIGRpc2NvdmVyYWJsZSBmcm9tIHRoZSBWTSwKPiBJ
J20gbm90IHN1cmUgYWJvdXQgdGhhdC4KPiBEb2VzIEFGX1ZTT0NLIHdvcmsgb24gbWFjb3M/IHRo
YXQgY291bGQgcHJvYmFibHkgZWFzaWx5IGJlIGFkZGVkIHRvCj4gdHJhbnNfZmQuLi4KPgo+ID4g
Rm9yIHRoZSBuZXh0IHNlcmllcyBtZW50aW9uZWQgYnkgbWUgKGdldHRpbmcgcmlkIG9mIHRoZSA1
MTJrIG1zaXplCj4gY2FwcGluZykgSQo+ID4gZmlyc3QgbmVlZCB0byByZWFkdXAgb24gdGhlIExp
bnV4IGtlcm5lbCBjb2RlLiBBY2NvcmRpbmcgdG8gdGhlCj4gZGlzY3Vzc2lvbiB3ZQo+ID4gYWxy
ZWFkeSBoYWQgYWJvdXQgdGhhdCBpc3N1ZSwgdGhlIHJlYXNvbiBmb3IgdGhhdCBjYXBwaW5nIHdh
cyB0aGF0IHRoZQo+IGFtb3VudAo+ID4gb2YgdmlydGlvIGVsZW1lbnRzIGlzIGN1cnJlbnRseSBo
YXJkIGNvZGVkIGluIHRoZSBMaW51eCBjbGllbnQncyB2aXJ0aW8KPiA+IHRyYW5zcG9ydDoKPiA+
Cj4gPiBPbiBTYW1zdGFnLCAyNy4gRmVicnVhciAyMDIxIDAxOjAzOjQwIENFU1QgRG9taW5pcXVl
IE1hcnRpbmV0IHdyb3RlOgo+ID4gPiBDaHJpc3RpYW4gU2Nob2VuZWJlY2sgd3JvdGUgb24gRnJp
LCBGZWIgMjYsIDIwMjEgYXQgMDI6NDk6MTJQTSArMDEwMDoKPiA+ID4gPiBSaWdodCBub3cgdGhl
IGNsaWVudCB1c2VzIGEgaGFyZCBjb2RlZCBhbW91bnQgb2YgMTI4IGVsZW1lbnRzLiBTbwo+IHdo
YXQKPiA+ID4gPiBhYm91dCByZXBsYWNpbmcgVklSVFFVRVVFX05VTSBieSBhIHZhcmlhYmxlIHdo
aWNoIGlzIGluaXRpYWxpemVkCj4gd2l0aCBhCj4gPiA+ID4gdmFsdWUgYWNjb3JkaW5nIHRvIHRo
ZSB1c2VyJ3MgcmVxdWVzdGVkICdtc2l6ZScgb3B0aW9uIGF0IGluaXQgdGltZT8KPiA+ID4gPgo+
ID4gPiA+IEFjY29yZGluZyB0byB0aGUgdmlydGlvIHNwZWNzIHRoZSBtYXguIGFtb3VudCBvZiBl
bGVtZW50cyBpbiBhCj4gdmlydHF1ZXVlCj4gPiA+ID4gaXMKPiA+ID4gPiAzMjc2OC4gU28gMzI3
NjggKiA0ayA9IDEyOE0gYXMgbmV3IHVwcGVyIGxpbWl0IHdvdWxkIGFscmVhZHkgYmUgYQo+ID4g
PiA+IHNpZ25pZmljYW50IGltcHJvdmVtZW50IGFuZCB3b3VsZCBub3QgcmVxdWlyZSB0b28gbWFu
eSBjaGFuZ2VzIHRvIHRoZQo+ID4gPiA+IGNsaWVudCBjb2RlLCByaWdodD8KPiA+ID4gVGhlIGN1
cnJlbnQgY29kZSBpbml0cyB0aGUgY2hhbi0+c2cgYXQgcHJvYmUgdGltZSAod2hlbiBkcml2ZXIg
aXMKPiA+ID4gbG9hZGVyKSBhbmQgbm90IG1vdW50IHRpbWUsIGFuZCBpdCBpcyBjdXJyZW50bHkg
ZW1iZWRkZWQgaW4gdGhlIGNoYW4KPiA+ID4gc3RydWN0LCBzbyB0aGF0IHdvdWxkIG5lZWQgYWxs
b2NhdGluZyBhdCBtb3VudCB0aW1lIChwOV9jbGllbnRfY3JlYXRlIDsKPiA+ID4gZWl0aGVyIHJl
c2l6aW5nIGlmIHJlcXVpcmVkIG9yIG5vdCBzaGFyaW5nKSBidXQgaXQgZG9lc24ndCBzb3VuZCB0
b28KPiA+ID4gaW50cnVzaXZlIHllcy4KPiA+ID4KPiA+ID4gSSBkb24ndCBzZWUgbW9yZSBhZGhl
cmVuZW5jZXMgdG8gVklSVFFVRVVFX05VTSB0aGF0IHdvdWxkIGh1cnQgdHJ5aW5nLgo+ID4KPiA+
IFNvIHByb2JhYmx5IGFzIGEgZmlyc3Qgc3RlcCBJIHdvdWxkIG9ubHkgcmUtYWxsb2NhdGUgdGhl
IHZpcnRpbyBlbGVtZW50cwo+ID4gYWNjb3JkaW5nIHRvIHRoZSB1c2VyIHN1cHBsaWVkIChpLmUu
IGxhcmdlKSAnbXNpemUnIHZhbHVlIGlmIHRoZSA5cAo+IGRyaXZlciBpcwo+ID4gbm90IGluIHVz
ZSBhdCB0aGF0IHBvaW50LCBhbmQgc3RpY2sgdG8gY2FwcGluZyBvdGhlcndpc2UuIFRoYXQgc2hv
dWxkCj4gcHJvYmFibHkKPiA+IGJlIGZpbmUgZm9yIG1hbnkgdXNlcnMgYW5kIHdvdWxkIGF2b2lk
IG5lZWQgZm9yIHNvbWUgc3luY2hyb25pemF0aW9uCj4gbWVhc3VyZXMKPiA+IGFuZCB0aGUgdHJh
cHMgaXQgbWlnaHQgYnJpbmcuIEJ1dCBhZ2FpbiwgSSBzdGlsbCBuZWVkIHRvIHJlYWQgbW9yZSBv
Zgo+IHRoZQo+ID4gTGludXggY2xpZW50IGNvZGUgZmlyc3QuCj4KPiBSaWdodCwgbG9va2luZyBh
dCBpdCBhZ2FpbiBwOV92aXJ0aW9fY3JlYXRlIHdvdWxkIGFscmVhZHkgYWxsb3cgdGhhdCBzbwo+
IHlvdSBqdXN0IG5lZWQgdG8gcGljayB0aGUgbW9zdCBhcHByb3ByaWF0ZSBjaGFubmVsIG9yIGNy
ZWF0ZSBhIG5ldyBvbmUKPiBpZiByZXF1aXJlZCwgc3luY2hyb25pemF0aW9uIHNob3VsZG4ndCBi
ZSB0b28gbXVjaCBvZiBhIHByb2JsZW0uCj4KPiBUaGUgOXAgY29kZSBpcyBzb21ldGltZXMgaW1w
cmVzc2l2ZSBpbiBpdHMgZm9yZXNpZ2h0IDspCj4KPiA+IEJUVyBqdXN0IGluIGNhc2UgSSBoYXZl
IG5vdCBtZW50aW9uZWQgaXQgYmVmb3JlOiB0aGVyZSBhcmUgc29tZQo+IGRldmVsb3BlciBkb2Nz
Cj4gPiBmb3IgdGhlIFFFTVUgOXAgc2VydmVyIGltcGxlbWVudGF0aW9uIG5vdzoKPiA+IGh0dHBz
Oi8vd2lraS5xZW11Lm9yZy9Eb2N1bWVudGF0aW9uLzlwCj4KPiBXb3csIHRoYXQncyBhbiBpbXBy
ZXNzaXZlIHdpa2kgcGFnZS4KPiBJJ3ZlIG5ldmVyIGJlZW4gZ29vZCB3aXRoIGRvY3VtZW50YXRp
b24gKGJlIGl0IHdyaXRpbmcgb3IgdXNpbmcgaXQpLCBidXQKPiBob3BlZnVsbHkgaXQnbGwgaGVs
cCBwZW9wbGUgbWFrZSB0aGUgZmlyc3Qgc3RlcCAtLSBnb29kIHdvcmshCj4KPiAtLQo+IERvbWlu
aXF1ZQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
