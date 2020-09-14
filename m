Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F79926844B
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Sep 2020 07:56:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kHhTB-0001bC-4r; Mon, 14 Sep 2020 05:56:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1kHhTA-0001b5-CI
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 05:56:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UuiwsmaPrPby01Jek6MPrLrPFofPSUqO+MAOkbZz1OE=; b=cz59Xd6qqjU/+WZeVhKIoXwbMx
 DuPclQyxabDuhOolRXPculohYr9hICCEH+9GJsaiLlLknwRyu0OZMa4K3g5bp7m//DqoqBs4u5Ta4
 FLK+2M9+4EjshP6UPXChE1STAsp3+eVkyWfonQwo4dnibTEWgL+7Z6y3iMdrkPGHErz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UuiwsmaPrPby01Jek6MPrLrPFofPSUqO+MAOkbZz1OE=; b=YrBvCj37QkPFaM209Hz2b2+eue
 sHcm0iMQPY2/4yhMOhYYEEPHDo/+RNQIYkfuaB/ftidNXbTZBcaZznvG6B4TvKf1Csx83Q1RPQqte
 Y3F3s0TNMdrXTURSbiQ23Vyx5RC1hwIwE4feKS6vuBkf/Y7g65H/E3CsoqqzCC9qRXFA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHhT4-007ycb-81
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Sep 2020 05:56:04 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id 0A68BC009; Mon, 14 Sep 2020 07:55:50 +0200 (CEST)
Date: Mon, 14 Sep 2020 07:55:35 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jianyong Wu <jianyong.wu@arm.com>
Message-ID: <20200914055535.GA30672@nautica>
References: <20200914033754.29188-1-jianyong.wu@arm.com>
 <20200914033754.29188-5-jianyong.wu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914033754.29188-5-jianyong.wu@arm.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHhT4-007ycb-81
Subject: Re: [V9fs-developer] [PATCH RFC 4/4] 9p: fix race issue in fid
 contention.
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
Cc: lucho@ionkov.net, justin.he@arm.com, ericvh@gmail.com,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Greg Kurz <gkurz@linux.vnet.ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ClRoYW5rcyBmb3IgaGF2aW5nIGEgbG9vayBhIHRoaXMhCgpKaWFueW9uZyBXdSB3cm90ZSBvbiBN
b24sIFNlcCAxNCwgMjAyMDoKPiBFcmljJ3MgYW5kIEdyZWcncyBwYXRjaCBvZmZlciBhIG1lY2hh
bmlzbSB0byBmaXggb3Blbi11bmxpbmstZipzeXNjYWxsCj4gYnVnIGluIDlwLiBCdXQgdGhlcmUg
aXMgcmFjZSBpc3N1ZSBpbiBmaWQgY29tdGVudGlvbi4KPiBBcyBHcmVnJ3MgcGF0Y2ggc3RvcmVz
IGFsbCBvZiBmaWRzIGZyb20gb3BlbmVkIGZpbGVzIGludG8gYWNjb3JkaW5nIGlub2RlLAo+IHNv
IGFsbCB0aGUgbG9va3VwIGZpZCBvcHMgY2FuIHJldHJpZXZlIGZpZCBmcm9tIGlub2RlIHByZWZl
cmVudGlhbGx5LiBCdXQKPiB0aGVyZSBpcyBubyBtZWNoYW5pc20gdG8gaGFuZGxlIHRoZSBmaWQg
Y29tdGVudGlvbiBpc3N1ZS4gRm9yIGV4YW1wbGUsCj4gdGhlcmUgYXJlIHR3byB0aHJlYWRzIGdl
dCB0aGUgc2FtZSBmaWQgaW4gdGhlIHNhbWUgdGltZSBhbmQgb25lIG9mIHRoZW0KPiBjbHVuayB0
aGUgZmlkIGJlZm9yZSB0aGUgb3RoZXIgdGhyZWFkIHJlYWR5IHRvIGRpc2NhcmQgdGhlIGZpZC4g
SW4gdGhpcwo+IHNjZW5hcmlvLCBpdCB3aWxsIGxlYWQgdG8gc29tZSBmYXRhbCBwcm9ibGVtcywg
ZXZlbiBrZXJuZWwgY29yZSBkdW1wLgoKQWgsIHNvIHRoYXQncyB3aGF0IHRoZSBwcm9ibGVtIHdh
cy4gR29vZCBqb2IgZmluZGluZyB0aGUgcHJvYmxlbSEKCgo+IEkgaW50cm9kdWNlIGEgbWVjaGFu
aXNtIHRvIGZpeCB0aGlzIHJhY2UgaXNzdWUuIEEgY291bnRlciBmaWVsZCBpbnRyb2R1Y2VkCj4g
aW50byBwOV9maWQgc3RydWN0IHRvIHN0b3JlIHRoZSByZWZlcmVuY2UgY291bnRlciB0byB0aGUg
ZmlkLiBXaGVuIGEgZmlkCj4gaXMgYWxsb2NhdGVkIGZyb20gdGhlIGlub2RlLCB0aGUgY291bnRl
ciB3aWxsIGluY3JlYXNlLCBhbmQgd2lsbCBkZWNyZWFzZQo+IGF0IHRoZSBlbmQgb2YgaXRzIG9j
Y3VwYXRpb24uIEl0IGlzIGd1YXJhbnRlZWQgdGhhdCB0aGUgZmlkIHdvbid0IGJlIGNsdW5rZWQK
PiBiZWZvcmUgdGhlIHJlZmVyZW5jZSBjb3VudGVyIGdvIGRvd24gdG8gMCwgdGhlbiB3ZSBjYW4g
YXZvaWQgdGhlIGNsdW5rZWQKPiBmaWQgdG8gYmUgdXNlZC4KPiBBcyB0aGVyZSBpcyBubyBuZWVk
IHRvIHJldHJpZXZlIGZpZCBmcm9tIGlub2RlIGluIGFsbCBjb25kaXRpb25zLCBhIGVudW0gdmFs
dWUKPiBkZW5vdGVzIHRoZSBzb3VyY2Ugb2YgdGhlIGZpZCBpcyBpbnRyb2R1Y2VkIHRvIDlwX2Zp
ZCBlaXRoZXIuIFNvIHdlIGNhbiBvbmx5Cj4gaGFuZGxlIHRoZSByZWZlcmVuY2UgY291bnRlciBh
cyB0byB0aGUgZmlkIG9idGFpbmVkIGZyb20gaW5vZGUuCgpJZiB0aGVyZSBpcyBubyBjb250ZW50
aW9uIHRoZW4gYW4gYWx3YXlzLW9uZSByZWZjb3VudCBhbmQgYW4gZW51bSBhcmUKdGhlIHNhbWUg
dGhpbmcuCkknZCByYXRoZXIgbm90IG1ha2UgYSBkaWZmZXJlbmNlIGJ1dCBtYWtlIGl0IGEgZnVs
bC1mbGVkZ2VkIHJlZmNvdW50CnRoaW5nOyB0aGUgZW51bSBpbiB0aGUgY29kZSBpbnRyb2R1Y2Vz
IHF1aXRlIGEgYml0IG9mIGNvZGUgY2h1cm4gdGhhdApkb2Vzbid0IHN0cmlrZSBtZSBhcyB1c2Vm
dWwgKGFuZCBJIGRvbid0IGxpa2UgaW50IGFyZ3VtZW50cyBsaWtlIHRoaXMsCmJ1dCBpZiB3ZSBj
YW4ganVzdCBkbyBhd2F5IHdpdGggaXQgdGhlcmUncyBubyBuZWVkIHRvIGFyZ3VlIGFib3V0IHRo
YXQpCgpOb3QgaGF2aW5nIGV4Y2VwdGlvbnMgZm9yIHRoYXQgd2lsbCBhbHNvIG1ha2UgdGhlIGNv
ZGUgYXJvdW5kCmZpZF9hdG9taWNfZGVjIG11Y2ggc2ltcGxlcjoganVzdCBoYXZlIGNsdW5rIGRv
IGFuIGF0b21pYyBkZWMgYW5kIG9ubHkKZG8gdGhlIGFjdHVhbCBjbHVuayBpZiB0aGF0IGhpdCB6
ZXJvLCBhbmQgd2Ugc2hvdWxkIGJlIGFibGUgdG8gZ2V0IHJpZApvZiB0aGF0IGhlbHBlcj8KCgpU
aW1pbmcgd2lzZSBpdCdzIGEgYml0IGF3a3dhcmQgYnV0IEkganVzdCBkdWcgb3V0IHRoZSBhc3lu
YyBjbHVuawptZWNoYW5pc20gSSB3cm90ZSB0d28geWVhcnMgYWdvLCB0aGF0IHdpbGwgY29uZmxp
Y3Qgd2l0aCB0aGlzIHBhdGNoIGJ1dAptaWdodCBhbHNvIGhlbHAgYSBiaXQgSSBndWVzcz8KSSBz
aG91bGQgcHJvYmFibHkgaGF2ZSByZXBvc3RlZCB0aGVtLi4uCgoKU28gdG8gcmVjYXA6CiAtIExl
dCdzIHRyeSBzb21lIG1vcmUgc3RyYWlnaHQtZm9yd2FyZCByZWZjb3VudGluZzogc2V0IHRvIDEg
b24gYWxsb2MsCmluY3JlbWVudCB3aGVuIGl0J3MgZm91bmQgaW4gZmlkLmMsIGRlY3JlbWVudCBp
biBjbHVuayBhbmQgb25seSBzZW5kIHRoZQphY3R1YWwgY2x1bmsgaWYgY291bnRlciBoaXQgMAoK
IC0gSWRlYWxseSBiYXNlIHlvdXJzZWxmIG9mIG15IDlwLXRlc3QgYnJhbmNoIHRvIGhhdmUgYXN5
bmMgY2x1bms6Cmh0dHBzOi8vZ2l0aHViLmNvbS9tYXJ0aW5ldGQvbGludXgvY29tbWl0cy85cC10
ZXN0CkkndmUgYmVlbiBwcm9taXNpbmcgdG8gcHVzaCBpdCB0byBuZXh0IHRoaXMgd2Vla+KEoiBm
b3IgYSBjb3VwbGUgb2Ygd2Vla3MKYnV0IGlmIHNvbWV0aGluZyBpcyBiYXNlZCBvbiBpdCBJIHdv
bid0IGJlIGFibGUgdG8gZGVsYXkgdGhpcyBtdWNoCmxvbmdlciwgaXQnbGwgZ2V0IHB1c2hlZCB0
byA1LjEwIGN5Y2xlIGFueXdheS4KKEknbGwgcmVzZW5kIHRoZSBwYXRjaGVzIHRvIGJlIGNsZWFu
KQoKIC0gKHBsZWFzZSwgbm8gcG9sbGluZyAxMG1zIHRoZW4gbGVha2luZyBzb21ldGhpbmchKQoK
ClRoYW5rcywKLS0gCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
