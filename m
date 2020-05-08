Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085F1CAA60
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 May 2020 14:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jX1uF-0003EP-9X; Fri, 08 May 2020 12:15:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <ericvh@gmail.com>) id 1jX1uE-0003EI-IE
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 12:15:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0AppYe160g0cmk1iNs5s9Ewo6BnInsv32qiRsC2V5RY=; b=OgmyOD5OyAUdhLbCSrIlxb2icy
 x9+xmznvdO0MYPDy7m+ZTZsN+OH0LND/yHsdcVDMYqa6aWdHKUKXWMVbSjhnu09Vw4bnXOjpb37j4
 T9/8xJU75ExEULZ/uT4Q2t3chm1b/+lj/NZHKNLbOPinmrUvkx6Ph5evtwNeSSlQ77zI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0AppYe160g0cmk1iNs5s9Ewo6BnInsv32qiRsC2V5RY=; b=TbkLFwTNI7V2+RnKG5zyGpz5x3
 7awtILO2gLfvJwYg5EJDe0iIZd0twje4pAF1zm1stJqN6f/yJk9eJT0DWdl+kSdfcRi3IwqN7vHkt
 ymy1iSfBGltnjqv3nrhYYKlggusYo1SHzL5uSzwUJjVq8Wrk+bKLD8XPh1408KwRZW8I=;
Received: from mail-vs1-f54.google.com ([209.85.217.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jX1uD-001lun-1x
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 12:15:06 +0000
Received: by mail-vs1-f54.google.com with SMTP id s11so912382vsm.3
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 08 May 2020 05:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0AppYe160g0cmk1iNs5s9Ewo6BnInsv32qiRsC2V5RY=;
 b=T9l0X1S3Pl8fXiH1Vbb3kVHzR20nS0LOt9qzgmb+k9t6Uo4RMBvRpN3AkCRT9t1x0b
 GeFoCrFYBK6suMggCSC1XPssZGdtlUNONnIJeUMw5lpKFqMBrfb6XpI5QOC/3KIFrYUH
 FrIA7LA1uHeXk/w9ZnXTS8l9FVq60/14ArG25gXUpgcG2LYQpzOZ3Y35jtwpKoR2La85
 DszkSO0jYVaCo4952ihJvISIXSTaOsGisiQpCKb0KZ5/0fa/RRE3qzd3HiL8prBtoC64
 WXBsiYhQMZyKRoJef30vSj4MgVzixGxkxdxW20LduNIwFQgBBTxfAFlKBdxhKVpSnfH/
 s/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0AppYe160g0cmk1iNs5s9Ewo6BnInsv32qiRsC2V5RY=;
 b=FRFCndL9LGRcGyYBt8niI2PP+/xTPZ8IaCPoqa0H/UzyDlkKQ5p7Uga2lqh9taxhYq
 peE/vmO8z0k7ASois3qX0hSdkauaNVaK4k+pleFUjifhyxYrLowvqKtzN1irG1UQSdGU
 XrTSl59N5FqtlktIt29sbfctRF+xqso//43rMffiMNRp3BDeabJTTdIhkw+HEut81bOU
 xhytResOEArlTFy8obuWogw4HWTlMAD/XkdATj2H0NyAvbgGHXtILoNXM5KJOjUbLwAT
 HWl/d82Zv5Q1Cj6oggzZF8QVO51JdhoCOtMjFQSU/B8kpdWuO9V216dZ24ltU4Ibdsql
 T3bg==
X-Gm-Message-State: AGi0PuYt6XC4YQn/PRGIy17r77EM21bcAcDc0uKDhbBkPE74o8CmcIoZ
 wDCIu/vkNR9hCMVBWP+7r8kg6GrVdzH4qApgKCI=
X-Google-Smtp-Source: APiQypKM6H8xEq0EDwD3UIVdOLDZ7+6UAKYwbWUDd9jh9sBagqQWISvdBHNgbsFijWIKvQ/EJnEDxj8Cmxs9I90Ueag=
X-Received: by 2002:a67:42c2:: with SMTP id p185mr1520938vsa.50.1588940098568; 
 Fri, 08 May 2020 05:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200507102339.GA7332@legohost>
 <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
 <20200507181856.GA32655@legohost>
 <CAFkjPTk7MtoabMVXXGSR+ih3n0BbtUQi1dCDNDvQRBQxo3M0yg@mail.gmail.com>
 <20200508091558.GB29480@legohost>
In-Reply-To: <20200508091558.GB29480@legohost>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 8 May 2020 07:14:47 -0500
Message-ID: <CAFkjPT=aRxKsd6oFmWxz91VVEDDm5xRy3uMJrZjz=dYwg91cOg@mail.gmail.com>
To: Oleg <lego12239@yandex.ru>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (ericvh[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jX1uD-001lun-1x
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] linux 9p mount & tattach
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
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

QmFzaWNhbGx5IOKAnHN0dXBpZCBtYXDigJ0gbW9kZSBpcyA5cDIwMDAudS4g4oCUIHRoZSBvbmUg
dGhpbmcgaXQgY2hhbmdlcyBpcyB0aGUKcHJvdG9jb2wgaXMgdWlkL2dpZCBmb3IgdW5hbWUvZ25h
bWUuCgogICAgICAtZXJpYwoKT24gRnJpLCBNYXkgOCwgMjAyMCBhdCA0OjE0IEFNIE9sZWcgPGxl
Z28xMjIzOUB5YW5kZXgucnU+IHdyb3RlOgoKPiBPbiBUaHUsIE1heSAwNywgMjAyMCBhdCAwMzo1
NzoxNlBNIC0wNTAwLCBFcmljIFZhbiBIZW5zYmVyZ2VuIHdyb3RlOgo+ID4gYWgsIHNvcnJ5LCBD
T05GSUdfTkVUXzlQX0RFQlVHIHByb2JhYmx5IG5lZWRzIHRvIGJlIHR1cm5lZCBvbiBpbiB5b3Vy
Cj4gPiBrZXJuZWwgZm9yIHlvdSB0byBzZWUgdGhlIG91dHB1dCBmcm9tIHRob3NlIHRoaW5ncyBm
cm9tIHRoZSA5cCBzaWRlLgo+Cj4gOi0pIEkgdGhvdWdodCBhYm91dCBzb21ldGhpbmcgbGlrZSB0
aGlzLCBidXQgaSBzZWFyY2ggREVCVUcgaW4KPiBGaWxlIHN5c3RlbXMgLT4gTmV0d29yayBmaWxl
IHN5c3RlbXMsIHdoaWxlIGl0IHJlc2lkZXMgaW4KPiBOZXR3b3JraW5nIHN1cHBvcnQgLT4gUGxh
biA5IFJlc291cmNlIFNoYXJpbmcgU3VwcG9ydCAoOVAyMDAwKS4KPgo+ID4gTG9va2luZyBhdCB0
aGUgY29kZSwgdGhlcmUgYXJlIHNvbWUgYXV0by1mYWxsLWJhY2tzIGRlcGVuZGluZyBvbiB0aGUK
PiBtb2RlLgo+ID4gSXQgbG9va3MgbGlrZSB1bmxlc3MgeW91IGFyZSB1c2luZyAudSBvciAubCB5
b3UgY2FuJ3QgdXNlIGFjY2Vzcz11c2VyLgo+Cj4gWWVzLiBJJ3ZlIGZvdW5kIHRoaXMgY29kZSBu
b3cgOi0pLiBUaGFua3MuCj4KPiA+IEkgYmVsaWV2ZSB0aGUgcmVhc29uIGlzIHRoYXQgd2l0aG91
dCB0aGUgZXh0ZW5zaW9ucywgdGhlcmUgYXJlbid0IGdvb2QKPiB3YXlzCj4gPiBvZiBtYXBwaW5n
IHRoZSB1aWQvZ2lkIGNvbmNlcHRzIG9mIGxpbnV4IHRvIHRoZSB1bmFtZSBjb25jZXB0cyBvZiBQ
bGFuIDkuCj4gPiBNb3N0IHRpbWVzIHdoZW4gcGVvcGxlIGFyZSBhY2Nlc3NpbmcgOXAgbmF0aXZl
IGZpbGUgc3lzdGVtcyBmcm9tIExpbnV4LAo+ID4gdGhleSBzcGVjaWZ5IHVuYW1lPSRVU0VSIG9u
IG1vdW50LiAgQnV0IEkgdGhpbmsgcXVpY2tlc3Qgc29sdXRpb24gd291bGQKPiBiZQo+ID4gdG8g
ZXh0ZW5kIHlvdXIgc3ludGhldGljIGZpbGUgc3lzdGVtIHRvIGJlIGFibGUgdG8gdXNlIDlwLnUg
b3IgOXAuTAo+Cj4gSSBqdXN0IGEgdXNlciBvZiBsaWJpeHAgYW5kIGRvbid0IGtub3cgaXQgaW50
ZXJuYWxzIHNvIGdvb2QgdGhhdCBpIGNhbiBhZGQKPiA5cC51IHN1cHBvcnQgdG8gaXQuIEJlY2F1
c2UsIHRoaXMgaXNuJ3QgYSBxdWlja2VzdCBzb2x1dGlvbiBmb3IgbWUgOi0pLgo+IElmIHRoZXJl
IGlzIG5vIG90aGVyIHdheSwgdGhlbiBpIGhhdmUgbm8gY2hvaWNlLiBCdXQgbWF5IGJlIHdlIGNh
biBkbwo+IGp1c3Qgc2ltcGxlIG1hcHBpbmcgb2YgdWlkL2dpZCB0by9mcm9tIGl0IHN0cmluZyBy
ZXByZXNlbnRhdGlvbj8KPiBFLmcuIDlwIHJlcGx5IGEgc3RhdCB3aXRoIHVpZCAiMCIgYW5kIGtl
cm5lbCB0cmFuc2Zvcm0gaXQgdG8gdWlkIDAuCj4gVGhpcyBzaG91bGQgYmUgc2ltcGxlIGFuZCBn
aXZlIHVzIHdvcmthYmxlIG1ldGhvZCB0byB0cmFuc21pdCB0byBrZXJuZWwKPiBvd25lciBpbmZv
LiBUaGlzIG1heSBiZSBpc24ndCB2ZXJ5IHdlbGwoZnJvbSBhIHBlbmRhbnQgcG9pbnQgb2Ygdmll
dyksIGJ1dAo+IHRoaXMgYmV0dGVyIHRoYW4gbm90aGluZyhmcm9tIGEgcHJhY3RpY2UgcG9pbnQg
b2YgdmlldykgOi0pLiBBbmQgdmVyeQo+IHVzZWZ1bAo+IGZvciA5cCBmcyB3aGljaCBpcyB3cml0
dGVuIGZvciBsaW51eCBhbmQgd2lsbG4ndCBiZSBydW4gb24gcGxhbjkuCj4gTWF5IGJlIHRoaXMg
ZmVhdHVyZSBjb3VsZCBiZSB0dXJuZWQgd2l0aCBzb21lIG9wdGlvbi4KPiBJZiA5cCBmaWxlIHNl
cnZlciBuZWVkcyB1c2VyL2dyb3VwIG5hbWVzLCB0aGVuKGlmIGl0IGxvY2FsIHRvIG1hY2hpbmUK
PiB3aGVyZSBtb3VudCBjYWxsIGlzIGlzc3VlZCkgaXQgY2FuIGJ5IGl0c2VsZiBjb25zdWx0cyB0
aGUgL2V0Yy9wYXNzd2QgYW5kCj4gL2V0Yy9ncm91cC4KPgo+IEkgd3JvdGUgZnVzZSBmcyBhbmQg
YWZ0ZXIgaSd2ZSBtYWRlIDlwIGZzIGkgZG9uJ3Qgd2FudCBiYWNrIHRvIGZ1c2UgOi0oLgo+IElm
IGtlcm5lbCBhbGxvdyB0byBkbyA5cCBtb3VudC91bW91bnQgd2l0aG91dCByb290IHJpZ2h0cyhs
aWtlIHBsYW45KSwgdGhlbgo+IGl0IHdvdWxkIGJlIGEgY29tcGxldGUgaGFwcGluZXNzIDotKS4K
Pgo+ID4gV2hlbiB5b3UgdHlwZSBtb3VudCB3aGF0IHNvcnQgb2Ygb3B0aW9ucyBkbyB5b3Ugc2Vl
IGZyb20gdGhlIDlwIG1vdW50Cj4gPiBwb2ludD8gIFdoZW4gSSB0cnkgd2l0aCB5b3VyIGNvbW1h
bmQgbGluZSBJIHNlZSBhY2Nlc3M9YW55Lgo+Cj4gSSBjb25maXJtLiBOb3cgaSBzZWUgdGhhdCBp
biAvcHJvYy9tb3VudHMgYWNjZXNzPWFueSA6LSguIERFQlVHIGluCj4gZG1lc2cgc2hvdyBzaW5n
bGUgVEFUVEFDSCBvbiBtb3VudCBjYWxsOgo+Cj4gWyA1OTQyLjY2NTk1Nl0gOXBuZXQ6ICgwMDAx
ODM0MikgPj4+IFRBVFRBQ0ggYWZpZCAtMSB1bmFtZSBub2JvZHkgYW5hbWUKPiBbIDU5NDIuNjY1
OTYxXSA5cG5ldDogKDAwMDE4MzQyKSA+Pj4gc2l6ZT0yNSB0eXBlOiAxMDQgdGFnOiAxCj4gWyA1
OTQyLjY2NjAzMV0gOXBuZXQ6ICgwMDAxOTExMykgPDw8IHNpemU9MjAgdHlwZTogMTA1IHRhZzog
MQo+IFsgNTk0Mi42NjYwNDBdIDlwbmV0OiAoMDAwMTgzNDIpIDw8PCBzaXplPTIwIHR5cGU6IDEw
NSB0YWc6IDEKPiBbIDU5NDIuNjY2MDQzXSA5cG5ldDogKDAwMDE4MzQyKSA8PDwgUkFUVEFDSCBx
aWQgODAuNTYyYzM3MDQxOTkwLjAKPiBbIDU5NDIuNjY2MTE1XSA5cG5ldDogLS0gdjlmc19nZXRf
aW5vZGUgKDE4MzQyKTogc3VwZXIgYmxvY2s6Cj4gZmZmZjkwMDNjN2E4NTgwMCBtb2RlOiA0MTc3
Nwo+IFsgNTk0Mi42NjYxMjNdIDlwbmV0OiAoMDAwMTgzNDIpID4+PiBUU1RBVCBmaWQgMAo+IFsg
NTk0Mi42NjYxMjZdIDlwbmV0OiAoMDAwMTgzNDIpID4+PiBzaXplPTExIHR5cGU6IDEyNCB0YWc6
IDEKPiBbIDU5NDIuNjY2MTk5XSA5cG5ldDogKDAwMDIyMzg1KSA8PDwgc2l6ZT02MiB0eXBlOiAx
MjUgdGFnOiAxCj4gWyA1OTQyLjY2NjIxMF0gOXBuZXQ6ICgwMDAxODM0MikgPDw8IHNpemU9NjIg
dHlwZTogMTI1IHRhZzogMQo+IFsgNTk0Mi42NjYyMTddIDlwbmV0OiAoMDAwMTgzNDIpIDw8PCBS
U1RBVCBzej0zMyB0eXBlPTAgZGV2PTAKPiBxaWQ9ODAuNTYyYzM3MDQxOTkwLjAKPiAgICAgICAg
ICAgICAgICA8PDwgICAgbW9kZT04MDAwMDFmZiBhdGltZT0wMDAwMDAwMCBtdGltZT0wMDAwMDAw
MCBsZW5ndGg9MAo+ICAgICAgICAgICAgICAgIDw8PCAgICBuYW1lPS8gdWlkPTEgZ2lkPTEgbXVp
ZD0wIGV4dGVuc2lvbj0oKG51bGwpKQo+ICAgICAgICAgICAgICAgIDw8PCAgICB1aWQ9LTEgZ2lk
PS0xIG5fbXVpZD0tMQo+IFsgNTk0Mi42NjYyMjBdIDlwbmV0OiAtLSB2OWZzX21vdW50ICgxODM0
Mik6ICBzaW1wbGUgc2V0IG1vdW50LCByZXR1cm4gMAo+Cj4KPiA+IFRoZSBhdXRvIGZhbGxiYWNr
IHdpdGggbm8gd2FybmluZyAoYWRtaXR0ZWRseSB0aGUgd2FybmluZyB3b3VsZCBiZSBpbgo+ID4g
a2VybmVsIGxvZ3MsIG5vdCBvbiBtb3VudCkgaXMgYSBiaXQgdW5mb3J0dW5hdGUgLS0gYnV0IGF0
IHRoZSBtb21lbnQgSQo+ID4gZG9uJ3QgdGhpbmsgd2UgZXZlbiBwdXQgaXQgaW4gdGhlIGxvZ3Mg
aWYgdGhlIGZhbGxiYWNrIGlzIHVzZWQuCj4gPgo+ID4gVGhlIGRvY3VtZW50YXRpb24gc2hvdWxk
IHByb2JhYmx5IGFsc28gYmUgdXBkYXRlZCB0byBub3RlIHRoZSBmYWxsYmFja3MKPiA+IChhY2Nl
c3M9Y2xpZW50IHdpbGwgZmFsbCBiYWNrIHRvIGFjY2VzcyB1c2VyIGlmIG5vdCB1c2luZyA5cC5s
IGFzIHdlbGwuCj4KPiBZZXAuIFRoZSBkb2N1bWVudGF0aW9uIGlzIGEgYml0IG1pc2xlYWRpbmcu
Cj4KPiA+IElmIGl0IG1ha2VzIHlvdSBmZWVsIGFueSBiZXR0ZXIsIHRoZXJlIGhhcyBiZWVuIGEg
RklYTUUgdGhlcmUgcHJvYmFibHkKPiA+IHNpbmNlIHdlIHdyb3RlIGl0IC0tYnV0IEknbSBub3Qg
c3VyZSB3ZSBldmVyIGNhbWUgdXAgd2l0aCBhIHdvcmthYmxlCj4gPiBzb2x1dGlvbiBzaW5jZSB0
cmFuc2xhdGluZyBmcm9tIHVpZCB0byB1bmFtZSBpbiBrZXJuZWwgaXMgYSBQSVRBIChmcm9tCj4g
PiBmcy85cC92OWZzLmMpOgo+ID4KPiA+ICAgICAgIGlmICghdjlmc19wcm90b19kb3RsKHY5c2Vz
KSAmJgo+ID4gICAgICAgICAgICAgKCh2OXNlcy0+ZmxhZ3MgJiBWOUZTX0FDQ0VTU19NQVNLKSA9
PSBWOUZTX0FDQ0VTU19DTElFTlQpKSB7Cj4gPiAgICAgICAgICAgICAgICAgLyoKPiA+ICAgICAg
ICAgICAgICAgICAgKiBXZSBzdXBwb3J0IEFDQ0VTU19DTElFTlQgb25seSBmb3IgZG90bC4KPiA+
ICAgICAgICAgICAgICAgICAgKiBGYWxsIGJhY2sgdG8gQUNDRVNTX1VTRVIKPiA+ICAgICAgICAg
ICAgICAgICAgKi8KPiA+ICAgICAgICAgICAgICAgICB2OXNlcy0+ZmxhZ3MgJj0gflY5RlNfQUND
RVNTX01BU0s7Cj4gPiAgICAgICAgICAgICAgICAgdjlzZXMtPmZsYWdzIHw9IFY5RlNfQUNDRVNT
X1VTRVI7Cj4gPiAgICAgICAgIH0KPiA+ICAgICAgICAgLypGSVhNRSAhISAqLwo+ID4gICAgICAg
ICAvKiBmb3IgbGVnYWN5IG1vZGUsIGZhbGwgYmFjayB0byBWOUZTX0FDQ0VTU19BTlkgKi8KPiA+
ICAgICAgICAgaWYgKCEodjlmc19wcm90b19kb3R1KHY5c2VzKSB8fCB2OWZzX3Byb3RvX2RvdGwo
djlzZXMpKSAmJgo+ID4gICAgICAgICAgICAgICAgICgodjlzZXMtPmZsYWdzJlY5RlNfQUNDRVNT
X01BU0spID09IFY5RlNfQUNDRVNTX1VTRVIpKSB7Cj4gPgo+ID4gICAgICAgICAgICAgICAgIHY5
c2VzLT5mbGFncyAmPSB+VjlGU19BQ0NFU1NfTUFTSzsKPiA+ICAgICAgICAgICAgICAgICB2OXNl
cy0+ZmxhZ3MgfD0gVjlGU19BQ0NFU1NfQU5ZOwo+ID4gICAgICAgICAgICAgICAgIHY5c2VzLT51
aWQgPSBJTlZBTElEX1VJRDsKPiA+ICAgICAgICAgfQo+ID4gICAgICAgICBpZiAoIXY5ZnNfcHJv
dG9fZG90bCh2OXNlcykgfHwKPiA+ICAgICAgICAgICAgICAgICAhKCh2OXNlcy0+ZmxhZ3MgJiBW
OUZTX0FDQ0VTU19NQVNLKSA9PQo+IFY5RlNfQUNDRVNTX0NMSUVOVCkpCj4gPiB7Cj4gPiAgICAg
ICAgICAgICAgICAgLyoKPiA+ICAgICAgICAgICAgICAgICAgKiBXZSBzdXBwb3J0IEFDTCBjaGVj
a3Mgb24gY2xpbmV0IG9ubHkgaWYgdGhlIHByb3RvY29sCj4gaXMKPiA+ICAgICAgICAgICAgICAg
ICAgKiA5UDIwMDAuTCBhbmQgYWNjZXNzIGlzIFY5RlNfQUNDRVNTX0NMSUVOVC4KPiA+ICAgICAg
ICAgICAgICAgICAgKi8KPiA+ICAgICAgICAgICAgICAgICB2OXNlcy0+ZmxhZ3MgJj0gflY5RlNf
QUNMX01BU0s7Cj4gPiAgICAgICAgIH0KPgo+IFRoZSBzYW1lIC0gd2UgY2FuIGp1c3QgdXNlICJz
dHVwaWQgbWFwIiBtb2RlLiBUcmFuc21pdCB1aWQvZ2lkIGluIHRleHR1YWwKPiByZXByZXNlbnRh
dGlvbi4gVGhpcyB3aWxsIGJlIHZlcnkgd2VsbCBhbmQgZW5vdWdoIGZvciBsaW51eCA5cCBmcy4K
Pgo+IC0tCj4g0J7Qu9C10LMg0J3QtdC80LDQvdC+0LIgKE9sZWcgTmVtYW5vdikKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
