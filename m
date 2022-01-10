Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B4E48904B
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Jan 2022 07:42:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n6oNk-0007Cw-Dg; Mon, 10 Jan 2022 06:42:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1n6oNi-0007Cp-CC
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 06:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iUvpA7fICjjVvjA5EPt3VCqQkRetsiCMfQ9k6UCOHWk=; b=YVrzxiy7A0f+yhKZAAfIxPm694
 qU1QgbpZlbC+gQXSXO6v3W8Ql6V/BmzrElB3GlxVB4l6mHaek/MElTQSEurQMwmn90vSerhYaCXvJ
 DzmFK8AmAuJUu0ykc2/HshceXKnEUXYqHRSmGHPj+qzQEXPQDcLBXMs9gf8xBLqMBEts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iUvpA7fICjjVvjA5EPt3VCqQkRetsiCMfQ9k6UCOHWk=; b=Osjt6L7HdGR7uwWl81dfyouTi/
 CUIjAwknQhtCrBSa2M2uxz65gAOsmHjurch8QoodePf07XWDFqAVd5XGmWRLDjdnX6F4KeCW0WY2k
 xh080iTeN/XwCUciRGKkxhawWJoWKXzyiqZdIbJ+uXjpFsIrSOsBVdNfYaHLH3yGrGss=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n6oNd-0004Hp-7t
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Jan 2022 06:42:12 +0000
Date: Mon, 10 Jan 2022 07:42:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1641796921;
 bh=qB4/ZCkV6Yn/0QFbhDvz9VnMhyqQ35EHcQ8g/7n7MsI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WsMCCy1xHZJ7XnMbHsjqDmZsY0gjn3x2ZvHi7pdzwb1petcrQghPZ6pWVKfhVDQyD
 IEt1giuJdidx64WOrPCYmaCEcNhX4wIHTXml05yeayVD5vgFBEx3FM8Efzf0jQfzXp
 UGDlhTbgSOJNCzJ7LJNGgEkJNbd0TEqaxgM4AGq4=
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <a168c7a0-aeb5-4eb1-8b26-751c0560b7ed@t-8ch.de>
References: <20211103193823.111007-1-linux@weissschuh.net>
 <20211103193823.111007-3-linux@weissschuh.net>
 <YduEira4sB0+ESYp@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YduEira4sB0+ESYp@codewreck.org>
Jabber-ID: thomas@t-8ch.de
X-Accept: text/plain, text/html;q=0.2, text/*;q=0.1
X-Accept-Language: en-us, en;q=0.8, de-de;q=0.7, de;q=0.6
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Dominique, On 2022-01-10 09:57+0900, Dominique Martinet
 wrote: > Hi Thomas, > > it's been a while but I had a second look as I intend
 on submitting this > next week, just a small fixup on the Kconfig entry >
 > T [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n6oNd-0004Hp-7t
Subject: Re: [V9fs-developer] [PATCH v2 2/4] 9p/trans_fd: split into
 dedicated module
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stefano Stabellini <stefano@aporeto.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRG9taW5pcXVlLAoKT24gMjAyMi0wMS0xMCAwOTo1NyswOTAwLCBEb21pbmlxdWUgTWFydGlu
ZXQgd3JvdGU6Cj4gSGkgVGhvbWFzLAo+IAo+IGl0J3MgYmVlbiBhIHdoaWxlIGJ1dCBJIGhhZCBh
IHNlY29uZCBsb29rIGFzIEkgaW50ZW5kIG9uIHN1Ym1pdHRpbmcgdGhpcwo+IG5leHQgd2Vlaywg
anVzdCBhIHNtYWxsIGZpeHVwIG9uIHRoZSBLY29uZmlnIGVudHJ5Cj4gCj4gVGhvbWFzIFdlacOf
c2NodWggd3JvdGUgb24gV2VkLCBOb3YgMDMsIDIwMjEgYXQgMDg6Mzg6MjFQTSArMDEwMDoKPiA+
IGRpZmYgLS1naXQgYS9uZXQvOXAvS2NvbmZpZyBiL25ldC85cC9LY29uZmlnCj4gPiBpbmRleCA2
NDQ2OGM0OTc5MWYuLmFmNjAxMTI5ZjFiYiAxMDA2NDQKPiA+IC0tLSBhL25ldC85cC9LY29uZmln
Cj4gPiArKysgYi9uZXQvOXAvS2NvbmZpZwo+ID4gQEAgLTE1LDYgKzE1LDEzIEBAIG1lbnVjb25m
aWcgTkVUXzlQCj4gPiAgCj4gPiAgaWYgTkVUXzlQCj4gPiAgCj4gPiArY29uZmlnIE5FVF85UF9G
RAo+ID4gKwlkZXBlbmRzIG9uIFZJUlRJTwo+IAo+IEkgdGhpbmsgdGhhdCdzIGp1c3QgYSBjb3B5
cGFzdGUgbGVmdG92ZXIgZnJvbSBORVRfOVBfVklSVElPID8KPiBTaW5jZSBpdCB1c2VkIHRvIGJl
IGNvZGUgd2l0aGluIE5FVF85UCBhbmQgaXQncyB3aXRoaW4gYSBpZiBORVRfOVAgaXQKPiBzaG91
bGRuJ3QgZGVwZW5kIG9uIGFueXRoaW5nLgo+IAo+IEFsc28gZm9yIGNvbXBhdGliaWxpdHkgSSdk
IHN1Z2dlc3Qgd2Uga2VlcCBpdCBvbiBieSBkZWZhdWx0IGF0IHRoaXMKPiBwb2ludCwgZS5nLiBh
ZGQgJ2RlZmF1bHQgTkVUXzlQJyB0byB0aGlzIGJsb2NrOgoKWWVzLCB5b3UgYXJlIGNvcnJlY3Qg
b24gYm90aCBwb2ludHMuCgo+IGRpZmYgLS1naXQgYS9uZXQvOXAvS2NvbmZpZyBiL25ldC85cC9L
Y29uZmlnCj4gaW5kZXggYWY2MDExMjlmMWJiLi5kZWFiYmQzNzZjYjEgMTAwNjQ0Cj4gLS0tIGEv
bmV0LzlwL0tjb25maWcKPiArKysgYi9uZXQvOXAvS2NvbmZpZwo+IEBAIC0xNiw3ICsxNiw3IEBA
IG1lbnVjb25maWcgTkVUXzlQCj4gIGlmIE5FVF85UAo+ICAKPiAgY29uZmlnIE5FVF85UF9GRAo+
IC0gICAgICAgZGVwZW5kcyBvbiBWSVJUSU8KPiArICAgICAgIGRlZmF1bHQgTkVUXzlQCj4gICAg
ICAgICB0cmlzdGF0ZSAiOVAgRkQgVHJhbnNwb3J0Igo+ICAgICAgICAgaGVscAo+ICAgICAgICAg
ICBUaGlzIGJ1aWxkcyBzdXBwb3J0IGZvciB0cmFuc3BvcnRzIG92ZXIgVENQLCBVbml4IHNvY2tl
dHMgYW5kCj4gCj4gCj4gSSdsbCBqdXN0IGZpeHVwIHRoZSBjb21taXQgd2l0aCBhIHdvcmQgaW4g
dGhlIG1lc3NhZ2UgdW5sZXNzIHlvdSBoYXZlIGEKPiBwcm9ibGVtIHdpdGggaXQsIHBsZWFzZSBs
ZXQgbWUga25vdyEgOikKCkxvb2tzIGdvb2QsIHRoYW5rcyEKClRob21hcwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxp
bmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
