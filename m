Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F02B56B84A
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 13:19:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9m0p-0001NU-V5; Fri, 08 Jul 2022 11:19:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux_oss@crudebyte.com>) id 1o9m0p-0001NH-D9
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 11:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+nD4DS8oXyEly5aIOtgm4gxwma+XmZ8gZLIcYuW4KRw=; b=QvJ0f+qprPluOZd+QNT4mZy83c
 1J9OCYROgbZYhrqirlr4eyeqqrsq7gW0z7Fv8h5yj8krbjXT0hsGEZXaY7M+P2kl3OJZXGd8PYQbZ
 PI3QnNJ52Lp8Sz1C/5J4OFrvWeEAPFU4kT0omVXlPOlupmdrGY/UinjuniDO47hO8/ns=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+nD4DS8oXyEly5aIOtgm4gxwma+XmZ8gZLIcYuW4KRw=; b=cPybfdmVQBkDIFyxDbHbu41jTy
 dTBVwDhBrwZoUBOpK8KbAVZ07ULck8DqlMNCkDzwqXvpgXEpPoB6mmk60s7i6cNIdAzlK6ea2ytXN
 qHkhdSnZVQzF6W2NHlg8chxTnDJQouDVJmNkWPGUXyRy5vpIuSr0sV7juTzbEcbk1/NI=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9m0g-00AnNp-7R
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 11:19:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=+nD4DS8oXyEly5aIOtgm4gxwma+XmZ8gZLIcYuW4KRw=; b=FHP22ExkFj3UrAOaRCKAYj2RJe
 C3Jp31UVB1Bnb357JrSlZRh1ewErJE9xzobxfYgT6P+3gBeQwIks2yPSRGTniW0ClGn5ngOkHOxN/
 bI0eDY3C/WK7Aa75FhWbn+Y+aD5fAi5h/d/lU6y4SkldFwIA1KDbmNNttYQK/fGdulyBbobiW5u7X
 WTriliP8iRV0U2OSXrNMCvoctGNzo3S9AfLyU5Pp3bfOs8Jq+i7klJlSXOS4XZFERyBRGO/+kHo/N
 xQ5xdCCy1nYcC48FJSL8YhN5Msd8kC5pd7JycF2gaPjPrhxiqfxwtSilI9J92p1xAIIDwZFSCogQF
 qRcXB2xwPGUgeM42yrX3iy36ER3Dx7/LEh3Ca1O2VSlGH6jtIHNouBHMSotrlwTp2Kc8+iI+UhcHl
 BjXNrAcZeOIi8d2YjE94m1a80yXKa+QNir/9fMiwc46lUc8t+PMPM2vZn+2kiP/GeodGBvYtqHqGA
 XgBZudtRxSWKSAFMUGacsIsNkBPwKHlWiJOyTvMNHELLL8o/VRCpl01ZDD9mDnqx4X5dz2fq9SXlz
 +5nrvvLGR48pSJ6TZ4kAzMhiS0fzdyTK4WYblTl2i/Zymb9X4GW4gLRn77OYJb6KvQJyMOYdOnyNF
 MjtBqSALMRsg+tPGp2uISS8ngZpp29KGmDLaLaBB8=;
To: Dominique Martinet <asmadeus@codewreck.org>,
 Eric Van Hensbergen <ericvh@gmail.com>
Date: Fri, 08 Jul 2022 13:18:40 +0200
Message-ID: <1690835.L3irNgtgWz@silver>
In-Reply-To: <CAFkjPTngeFh=0mPVW-Yf1Sxkxp_HDNUeANndoYN3-eU9_rGLuQ@mail.gmail.com>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <YseFPgFoLpjOGq40@codewreck.org>
 <CAFkjPTngeFh=0mPVW-Yf1Sxkxp_HDNUeANndoYN3-eU9_rGLuQ@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Freitag, 8. Juli 2022 04:26:40 CEST Eric Van Hensbergen
    wrote: > kvmtool might be the easiest I guess - I’m traveling right now
    but I can > try and find some others. The arm fast models have free [...]
    
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1o9m0g-00AnNp-7R
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, netdev@vger.kernel.org,
 Nikolay Kichukov <nikolay@oldum.net>, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJlaXRhZywgOC4gSnVsaSAyMDIyIDA0OjI2OjQwIENFU1QgRXJpYyBWYW4gSGVuc2Jlcmdl
biB3cm90ZToKPiBrdm10b29sIG1pZ2h0IGJlIHRoZSBlYXNpZXN0IEkgZ3Vlc3MgLSBJ4oCZbSB0
cmF2ZWxpbmcgcmlnaHQgbm93IGJ1dCBJIGNhbgo+IHRyeSBhbmQgZmluZCBzb21lIG90aGVycy4g
IFRoZSBhcm0gZmFzdCBtb2RlbHMgaGF2ZSBmcmVlIHZlcnNpb25zIHRoYXQgYXJlCj4gZG93bmxv
YWRhYmxlIGFzIHdlbGwuICBJIGtub3cgSeKAmXZlIHNlZW0gc29tZSBvdGhlciBsZXNzLXRyYWRp
dGlvbmFsIHVzZXMgb2YKPiB2aXJ0aW8gcGFydGljdWxhcmx5IGluIGxpYm9zIGRlcGxveW1lbnRz
IGJ1dCB3aWxsIHRha2Ugc29tZSB0aW1lIHRvIHJhdHRsZQo+IHRob3NlIGZyb20gbXkgbWVtb3J5
LgoKU29tZSBleGFtcGxlcyB3b3VsZCBpbmRlZWQgYmUgdXNlZnVsLCB0aGFua3MhCgo+IE9uIEZy
aSwgSnVsIDgsIDIwMjIgYXQgMTE6MTYgQU0gRG9taW5pcXVlIE1hcnRpbmV0IDxhc21hZGV1c0Bj
b2Rld3JlY2sub3JnPgo+IAo+IHdyb3RlOgo+ID4gRXJpYyBWYW4gSGVuc2JlcmdlbiB3cm90ZSBv
biBGcmksIEp1bCAwOCwgMjAyMiBhdCAxMDo0NDo0NUFNICsxMDAwOgo+ID4gPiB0aGVyZSBhcmUg
b3RoZXIgOXAgdmlydGlvIHNlcnZlcnMgLSBzZXZlcmFsIGVtdWxhdGlvbiBwbGF0Zm9ybXMgc3Vw
cG9ydAo+ID4gCj4gPiBpdAo+ID4gCj4gPiA+IHNhbnMgcWVtdS4KPiA+IAo+ID4gV291bGQgeW91
IGhhcHBlbiB0byBoYXZlIGFueSBjb25jcmV0ZSBleGFtcGxlPwo+ID4gSSdkIGJlIGN1cmlvdXMg
aWYgdGhlcmUgYXJlIHNvbWUgdGhhdCdkIGJlIGVhc3kgdG8gc2V0dXAgZm9yIHRlc3QgZm9yCj4g
PiBleGFtcGxlOyBteSBjdXJyZW50IHZhbGlkYXRpb24gc2V0dXAgbGFja3MgYSBiaXQgb2YgZGl2
ZXJzaXR5Li4uCj4gPiAKPiA+IEkgZm91bmQgaHR0cHM6Ly9naXRodWIuY29tL21vYnkvaHlwZXJr
aXQgZm9yIE9TWCBidXQgdGhhdCBkb2Vzbid0IHJlYWxseQo+ID4gaGVscCBtZSwgYW5kIGNhbid0
IHNlZSBtdWNoIGVsc2UgcmVsZXZhbnQgaW4gYSBxdWljayBzZWFyY2gKClNvIHRoYXQgYXBwZWFy
cyB0byBiZSBhIDlwIChAdmlydGlvLVBDSSkgY2xpZW50IGZvciB4aHl2ZSwgd2l0aCBtYXguIDI1
NmtCIApidWZmZXJzIDw9PiBtYXguIDY4IHZpcnRpbyBkZXNjcmlwdG9ycyAobWVtb3J5IHNlZ21l
bnRzKSBbMV06CgovKiBYWFggaXNzdWVzIHdpdGggbGFyZ2VyIGJ1ZmZlcnMgZWxzZXdoZXJlIGlu
IHN0YWNrICovCiNkZWZpbmUgQlVGU0laRSAoMSA8PCAxOCkKI2RlZmluZSBNQVhERVNDIChCVUZT
SVpFIC8gNDA5NiArIDQpCiNkZWZpbmUgVlQ5UF9SSU5HU1ogKEJVRlNJWkUgLyA0MDk2ICogNCkK
ClsxXSBodHRwczovL2dpdGh1Yi5jb20vbW9ieS9oeXBlcmtpdC9ibG9iL21hc3Rlci9zcmMvbGli
L3BjaV92aXJ0aW9fOXAuYyNMMjcKCkJ1dCBvbiB4aHl2ZSBzaWRlIEkgZG9uJ3Qgc2VlIGFueSA5
cCBzZXJ2ZXIgaW1wbGVtZW50YXRpb246Cmh0dHBzOi8vZ2l0aHViLmNvbS9tYWNoeXZlL3hoeXZl
L3NlYXJjaD9xPTlwCk1heWJlIGEgOXAgc2VydmVyIGlzIGFscmVhZHkgaW1wbGVtZW50ZWQgYnkg
QXBwbGUncyBIeXBlcnZpc29yIGZyYW1ld29yay4gSSAKZG9uJ3QgZmluZCB0aGlzIGRvY3VtZW50
ZWQgYW55d2hlcmUgdGhvdWdoLgoKQmVzdCByZWdhcmRzLApDaHJpc3RpYW4gU2Nob2VuZWJlY2sK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMt
ZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZl
bG9wZXIK
