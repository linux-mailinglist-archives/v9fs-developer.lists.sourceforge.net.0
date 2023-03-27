Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F12ED6CABF9
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Mar 2023 19:40:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgqpG-00075I-11;
	Mon, 27 Mar 2023 17:40:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pgqpF-00075C-9f
 for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 17:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pZyn7jSE3myi5GOQcd/Alvk1yAzY2UEotzjk0nWF3cs=; b=QDmYM9DxWjiGvwzaE62saHpwK2
 P3aE+Use5xdn2jKRUputIEE+LLNfQuHXCd4XKJBQNsfX5axLpsRFTZToDH+RHWCJpuSpNdf3uo/0x
 ZSi76+aHfMXyZmDrI/HYzi48PQCUw+8UJ42/lFDCtj3zXicJ72Cd5wApvvDwRmJTCLbs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pZyn7jSE3myi5GOQcd/Alvk1yAzY2UEotzjk0nWF3cs=; b=j610oQeg7RFW1Md+9PMrw28IBK
 n7nH3Hwu3X7zkqUnQJZ0wi0rQxShhJukfa0SXKYT4Cfk9wmWhmn/z02K6lbiJOYGa89ZtXQdhQxAM
 d9vxGsuHhwIEghZjGy5FNmGPDm4IxPDwpTvkKbZwKR2d1dtZ7HXXtpotIX/BOs20rrTI=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgqpC-0007gO-Ok for v9fs-developer@lists.sourceforge.net;
 Mon, 27 Mar 2023 17:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description;
 bh=pZyn7jSE3myi5GOQcd/Alvk1yAzY2UEotzjk0nWF3cs=; b=KgiSjIhBCI5KS+1Jou000yQ3+R
 RxSVbYlH3MlRUgh1iNJw0W2Uh1dT9oHUCfrPMfQGgX2D6hy701vuT4h1S3pxXTB6hdSikaCW4j05O
 1gRAkS8YpEj5Zyel+vEsGkc+Yv2keYM0im61MeXnfzzRrzS8mlas7CvAVexqTiJXaQrRGdTdUlXDf
 iyAZJdrDWydtpvZRUiI1ssmREs12UKyKobHaIPKH0k0WVAXl6F6rxamNXSsLBOhxdD0xPElr4Nwwt
 IlSFhace3k2bsR1BBpGNNcEQNQ0LaDULcTsRhjFL7B8/rATvPG8do0vqeqOZZ7q1NhP2rtrxurx7S
 HReY5T2Q==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1pgqp0-00Bv81-0E; Mon, 27 Mar 2023 17:39:54 +0000
Date: Mon, 27 Mar 2023 10:39:54 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <ZCHU6k56nF5849xj@bombadil.infradead.org>
References: <ZA0FEyOtRBvpIXbi@bombadil.infradead.org>
 <CAFkjPTmVbyuA0jEAjYhsOsg-SE99yXgehmjqUZb4_uWS_L-ZTQ@mail.gmail.com>
 <ZBSc1jjYJn6noeMl@bombadil.infradead.org>
 <CAFkjPTmc-OgMEj9kF3y04sRGeOVO_ogEv1fGG=-CfKP-0ZKC_g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTmc-OgMEj9kF3y04sRGeOVO_ogEv1fGG=-CfKP-0ZKC_g@mail.gmail.com>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 27, 2023 at 08:05:21AM -0500, Eric Van Hensbergen
 wrote: > Sorry, took a bit to unstack from day job, but while going through
 the > patch queue I remembered I still had some questions to a [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pgqpC-0007gO-Ok
Subject: Re: [V9fs-developer] 9p caching with cache=loose and cache=fscache
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBNYXIgMjcsIDIwMjMgYXQgMDg6MDU6MjFBTSAtMDUwMCwgRXJpYyBWYW4gSGVuc2Jl
cmdlbiB3cm90ZToKPiBTb3JyeSwgdG9vayBhIGJpdCB0byB1bnN0YWNrIGZyb20gZGF5IGpvYiwg
YnV0IHdoaWxlIGdvaW5nIHRocm91Z2ggdGhlCj4gcGF0Y2ggcXVldWUgSSByZW1lbWJlcmVkIEkg
c3RpbGwgaGFkIHNvbWUgcXVlc3Rpb25zIHRvIGFuc3dlciBoZXJlLgo+IAo+IE9uIEZyaSwgTWFy
IDE3LCAyMDIzIGF0IDEyOjAx4oCvUE0gTHVpcyBDaGFtYmVybGFpbiA8bWNncm9mQGtlcm5lbC5v
cmc+IHdyb3RlOgo+ID4KPiA+IE9uIFN1biwgTWFyIDEyLCAyMDIzIGF0IDAxOjIyOjM0UE0gLTA1
MDAsIEVyaWMgVmFuIEhlbnNiZXJnZW4gd3JvdGU6Cj4gPiA+IEkgd2FzIGxvb2tpbmcgYXQga2Rl
dm9wcyB0aGUgb3RoZXIgZGF5IC0gY29vbCBzdHVmZi4gIFdhcyB0cnlpbmcgdG8KPiA+ID4gZmln
dXJlIG91dCBob3cgd2UgY291bGQgZG8gdjlmcyBDSSB3aXRoIGl0Lgo+ID4KPiA+IEhhcHB5IHRv
IGhlbHAgYW55IHF1ZXN0aW9ucyB5b3UgbWF5IGhhdmUgYWJvdXQgaXQhCj4gPgo+ID4gPiBCb3Ro
IGNhY2hlPWxvb3NlIGFuZCBjYWNoZT1mc2NhY2hlIGN1cnJlbnRseSBkb24ndCB2YWxpZGF0ZSB2
aWEgaG9zdC4KPiA+Cj4gPiBXaGF0IGRvZXMgdGhpcyBtZWFuIGV4YWN0bHk/Cj4gPgo+IAo+IFRo
YXQncyBhIGdvb2QgcXVlc3Rpb24gLSBJIGd1ZXNzIHRoZSBhbnN3ZXIgaXMgImJ5IGRlc2lnbiIg
dGhleSBkb24ndAo+IGRvIGFueXRoaW5nIHNwZWNpYWwgdG8gY2hlY2sgdGhhdCB0aGUgY2FjaGUg
aXMgdXAgdG8gZGF0ZSB3aXRoIHRoZQo+IGhvc3QuCgpGcm9tIGEgdXNlciBwZXJzcGVjdGl2ZSBu
b25lIG9mIHRoaXMgaXMgY2xlYXIgZnJvbSBhbnkgb2YgdGhlCmRvY3VtZW50YXRpb24gSSByZWFk
LgoKPiBUaGF0IGJlaW5nIHNhaWQsIHRoZXJlIGFyZSBzZXZlcmFsIHBsYWNlcyBpbiB0aGUgY29k
ZSB3aGVyZSB0aGUKPiBjYWNoZSB3aWxsIGJlIGludmFsaWRhdGVkCgo8LS0gZWxhYm9yYXRpb24g
b2YgY3VycmVudCBpbnZhbGlkYXRpb24gc2NoZW1lcyB3aGVuIGNhY2hlIGlzIGVuYWJsZWQgLS0+
Cj4gCj4gPiBSaWdodCBub3cgYSBob3N0IHdpdGggZGViaWFuIDYuMC4wLTYtYW1kNjQgY2VydGFp
bmx5IGRvZXMgbm90IHNlZW0gdG8gcHVzaAo+ID4gb3V0IGNoYW5nZXMgdG8gOXAgY2xpZW50cyBv
biBWTXMgYnV0IEpvc2VmIGluZm9ybXMgbWUgdGhhdCB3aXRoIDYuMi1yYzgKPiA+IGhlIGRpZCBz
ZWUgdGhlIGNoYW5nZXMgcHJvcGFnYXRlLgo+IAo+IEkgZGlkIHRpZ2h0ZW4gdXAgc29tZSBvZiB0
aGUgaW52YWxpZGF0aW9uIGluIHRoZSBsYXN0IHJvdW5kIG9mCj4gcGF0Y2hlcywgaG93ZXZlciB0
aGVzZSBhcmUgbGlrZWx5IG1vcmUgb24gdGhlIG92ZXJseSBjb25zZXJ2YXRpdmUgc2lkZQo+IHZl
cnN1cyBkb2luZyB0aGUgcmlnaHQgdGhpbmcgLS0gaG93ZXZlciwgaXRzIHJlYWxseSBub3QgYXQg
dGhlIHBvaW50Cj4gd2hlcmUgeW91IGNhbiByZWx5IG9uIGl0LiAgSWYgY29uc2lzdGVuY3kgaXMg
c29tZXRoaW5nIHlvdSBjYXJlIGFib3V0LAo+IEknZCBzdWdnZXN0IGNhY2hlPW5vbmUgdW50aWwg
eW91IGNhbiBnZXQgY2FjaGU9cmVhZGFoZWFkLgoKSW5kZWVkIHRoYXQgZml4ZXMgdGhpbmdzIGFu
ZCBtYWtlcyB0aGluZ3Mgd29yayAqZXhhY3RseSogYXMgb25lIHdvdWxkCmV4cGVjdC4gVGhlIHNp
bXBsZSBjYXNlIG9mIGp1c3QgZWRpdGluZyBhIGZpbGUgYW5kIGltbWVkaWF0ZWx5IGNvbXBhcmlu
ZwpzaGExc3VtIG9uIHRoZSBob3N0IGFuZCBndWVzdCB5aWVsZHMgdGhlIGV4YWN0IHNhbWUgcmVz
dWx0LgoKSW4gY29tcGFyaXNvbiB1c2luZyB0aGUgZGVmYXVsdCBjYWNoZSBvZiBsb29zZS4uLiB0
aGluZ3MgYXJlIG5vdCB3aGF0CnlvdSdkIGV4cGVjdC4gVGhlIGNhY2hlIGlzIGNvbXBsZXRsZXkg
dXNlbGVzcyBldmVuIGlmIHlvdSBkbyBhIGZ1bGwKa2VybmVsIGNvbXBpbGF0aW9uIG9uIHRoZSBo
b3N0LiBUaGUgZ3Vlc3Qgd2lsbCBub3QgZ2V0IGFueSB1cGRhdGVzIGF0CmFsbC4KCj4gPiBEbyBu
b25lIG9mIHRoZSBleGlzdGluZyA5cCBjYWNoZSBtb2RlcyBub3Qgc3VwcG9ydCBvcGVuLXRvLWNs
b3NlIHBvbGljaWVzCj4gPiBhdCBhbGw/Cj4gPgo+IAo+IG5vdCBzcGVjaWZpY2FsbHkgb3Blbi10
by1jbG9zZSwgbG9vc2Ugc3VwcG9ydHMgZmlsZSBhbmQgZGlyIGNhY2hpbmcKPiBidXQgd2l0aG91
dCBjb25zaXN0ZW5jeSwgaXQgbWlnaHQgYmUgdGVtcHRpbmcgdG8gdHJ5IGNhY2hlPW1tYXAgdG8g
c2VlCj4gaWYgaXQgZ2V0cyB5b3UgY2xvc2VyLCBidXQgbXkgZnJhbWUgb2YgcmVmZXJlbmNlIGlz
IG1vcmUgdGhlIGN1cnJlbnQKPiBwYXRjaGVzIHZlcnN1cyB0aGUgb2xkIGNvZGUgc28gbm90IHN1
cmUgaXQgd291bGQgYnV5IHlvdSBhbnl0aGluZy4KCk9LIHRoYW5rcywgaXQgc2VlbXMgd2Ugc2hv
dWxkIHByb2JhYmx5IGhlbHAgdGVzdCA5cCB3aXRoIGZzdGVzdHMgYW5kIGdldAphIGJhc2VsaW5l
LCBhbmQgdGhlbiBjaGVjayB0byBzZWUgaG93IG1hbnkgdGVzdHMgYWN0dWFsbHkgZG8gdGVzdCBj
YWNoZQptb2Rlcy4gSWYgbm9uZSBleGlzdHMsIHdlIHNob3VsZCBhZGQgc29tZSB0byB0ZXN0IGZv
ciBlYWNoIGludmFsaWRhdGlvbgpzdHJhdGVneSBwb3NzaWJsZS4KCldlIGNhbiBjZXJ0YWlubHkg
dXNlIGtkZXZvcHMgdG8gaGVscCB0ZXN0IHRoaXMgYnV0IEkgc3VzcGVjdCB0aGF0CnNpbmNlIGl0
IHJlbGllcyBvbiBhIGNsaWVudCAvIGhvc3QgbW9kZWwgaXQgbWF5IG1ha2Ugc2Vuc2UgdG8gc2hh
cmUKc29tZSBjb2RlIGZvciBhdXRvbWF0aW9uIG9uIGJyaW5ndXAgd2l0aCB3aGF0IE5GUyBmb2xr
cyBhcmUgZG9pbmcKd2l0aCBrZGV2b3BzLgoKPiA+IFJpZ2h0IG5vdyB0aGUgY2FjaGUgbW9kZSB1
c2VkIGlzIGNhY2hlPWxvb3NlIGFzIHRoYXQncyB0aGUgZGVmYXVsdCwKPiA+IHdoYXQgZG8geW91
IHJlY29tbWVuZCBmb3IgYSB0eXBpY2FsIGtlcm5lbCBkZXZlbG9wbWVudCBlbnZpcm9uZW1udD8K
PiAKPiBBcyBJIHNhaWQsIGlmIHlvdSBhcmUgaW50ZXJhY3RpdmVseSBjaGFuZ2luZyB0aGluZ3Mg
SSB0aGluayB5b3UnZCB3YW50Cj4gdG8gZ28gZm9yIGNhY2hlPW5vbmUgZm9yIG5vdyAoYXMgcGFp
bmZ1bCBhcyBpdCBpcykuCgpUaGUgZG9jdW1lbnRhdGlvbiBpcyBub3Qgc28gY2xlYXIgd2hhdCB0
aGUgcGFpbiBpcyBpbiB0ZXJtcyBvZgpwZXJmb3JtYW5jZS4KCj4gSSBoYXZlIGZpeGVkIHdoYXQK
PiBJIGhvcGUgdG8gYmUgbXkgbGFzdCBidWcgd2l0aCB0aGUgbmV3IHBhdGNoIHNlcmllcyBzbyBp
dCBzaG91bGQgYmUKPiBnb2luZyBpbnRvIGxpbnV4LW5leHQgdG9kYXkuCgpOaWNlLCB0aGFua3Ms
IHNpbmNlIGtkZXZvcHMgcmVsaWVzIG9uIGEgaG9zdCBrZXJuZWwgdGhvdWdoIGFuZCB3ZSBzdHJp
dmUKdG8gaGF2ZSBzdGFiaWxpdHkgZm9yIHRoYXQsIEkgcGVyc29uYWxseSBsaWtlIHRvIHJlY29t
bWVuZCBkaXN0cm8Ka2VybmVscyBhbmQgc28gdGhleSdyZSBhIGZldyBrZXJuZWwgcmVsZWFzZXMg
b3V0IG9mIGRhdGUuIFNvIGRlYmlhbi10ZXN0aW5nCmlzIG9uIDYuMSBhcyBvZiB0b2RheSBmb3Ig
ZXhhbXBsZS4KClNvIEknbGwgZ28gd2l0aCB0aGUgZm9sbG93aW5nIGZvciBub3cgb24ga2Rldm9w
cyBmb3Igbm93LiBUaGlzIHNlZW1zIHRvCmZpeCBhbGwgdGhlIHdvZXMgSSBoYWQgZm9yIG5vdy4g
T25jZSBhIGNhY2hlIG1vZGUgd2l0aCBwcm9wZXIgdGVzdGlnbgpwcm92ZXMgdG8gcGFzcyBtb3N0
IHRlc3RzIGluIGZzdGVzdHMgd2UgY2FuIHN3aXRjaCB0byBpdCBvbiBrZGV2b3BzLgoKZGlmZiAt
LWdpdCBhL3BsYXlib29rcy9yb2xlcy9ib290bGludXgvdGFza3MvbWFpbi55bWwgYi9wbGF5Ym9v
a3Mvcm9sZXMvYm9vdGxpbnV4L3Rhc2tzL21haW4ueW1sCmluZGV4IDI5N2E0Mjc5NGEwOS4uNDc3
Y2FjZGVlODg3IDEwMDY0NAotLS0gYS9wbGF5Ym9va3Mvcm9sZXMvYm9vdGxpbnV4L3Rhc2tzL21h
aW4ueW1sCisrKyBiL3BsYXlib29rcy9yb2xlcy9ib290bGludXgvdGFza3MvbWFpbi55bWwKQEAg
LTExMSw3ICsxMTEsNyBAQAogICAgIG5hbWU6ICJ7eyB0YXJnZXRfbGludXhfZGlyX3BhdGggfX0i
CiAgICAgc3JjOiAie3sgYm9vdGxpbnV4XzlwX21vdW50X3RhZyB9fSIKICAgICBmc3R5cGU6ICI5
cCIKLSAgICBvcHRzOiAicm8sdHJhbnM9dmlydGlvLHZlcnNpb249OXAyMDAwLkwscG9zaXhhY2ws
Y2FjaGU9bG9vc2UiCisgICAgb3B0czogInJvLHRyYW5zPXZpcnRpbyx2ZXJzaW9uPTlwMjAwMC5M
LHBvc2l4YWNsLGNhY2hlPW5vbmUiCiAgICAgc3RhdGU6ICJtb3VudGVkIgogICB0YWdzOiBbICdk
YXRhX3BhcnRpdGlvbicgXQogICB3aGVuOgoKQlRXIHRoZSBxZW11IHdpa2kgc2VlbXMgdG8gc3Vn
Z2VzdCBjYWNoZT1sb29zZSBhbmQgaXRzIHdoeSBJIHVzZWQgaXQgb24Ka2Rldm9wcyBhcyBhIGRl
ZmF1bHQuIFdoYXQgYWJvdXQgdGhlIGZvbGxvd2luZyBzbyB0byBhdm9pZCBmb2xrcyBydW5uaW5n
CmludG8gc2ltaWxhciBpc3N1ZXM/IEkgY2FuIGdvIGFuZCB1cGRhdGUgdGhlIHdpa2kgdG9vLgoK
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0IGIvRG9jdW1lbnRh
dGlvbi9maWxlc3lzdGVtcy85cC5yc3QKaW5kZXggMGU4MDBiOGY3M2NjLi40NzY5NDQ5MTIzMTIg
MTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0CisrKyBiL0RvY3Vt
ZW50YXRpb24vZmlsZXN5c3RlbXMvOXAucnN0CkBAIC01Niw2ICs1NiwxMiBAQCBzZWVuIGJ5IHJl
YWRpbmcgL3N5cy9idXMvdmlydGlvL2RyaXZlcnMvOXBuZXRfdmlydGlvL3ZpcnRpbzxuPi9tb3Vu
dF90YWcgZmlsZXMuCiBPcHRpb25zCiA9PT09PT09CiAKK05vdGUgdGhhdCBhIG5vbmUgb2YgdGhl
IGN1cnJlbnRseSBzdXBwb3J0ZWQgY2FjaGUgbW9kZXMgdmFsaWRhdGUgYWdhaW5zdCBkYXRhCith
Z2FpbmdzdCB0aGUgaG9zdCwgdGhleSBkb24ndCBkbyBhbnl0aGluZyBzcGVjaWFsIHRvIGNoZWNr
IHRoYXQgdGhlIGNhY2hlIGlzIHVwCit0byBkYXRlIHdpdGggdGhlIGhvc3QuIElmIHlvdSByZWFs
bHkgbmVlZCBzb21lIHN5bmNocm9uaXphdGlvbiB0aGUgY2FjaGUgbW9kZQoreW91IHNob3VsZCB1
c2UgaXMgZGVmYXVsdCAibm9uZSIsIHRoYXQgd2lsbCBlbnN1cmUgZGF0YSBpcyBrZXB0IHVwIHRv
IGRhdGUKK3N5bmNocm9ub3VzbHkgcmlnaHQgYXdheSBkZXNwaXRlIHNvbWUgcGVyZm9ybWFuY2Ug
b3ZlcmhlYWQuCisKICAgPT09PT09PT09PT09PSA9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KICAgdHJhbnM9bmFtZQlzZWxlY3Qg
YW4gYWx0ZXJuYXRpdmUgdHJhbnNwb3J0LiAgVmFsaWQgb3B0aW9ucyBhcmUKICAgCQljdXJyZW50
bHk6CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
