Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB3D62F95B
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Nov 2022 16:35:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ow3Ob-0003TW-SJ;
	Fri, 18 Nov 2022 15:35:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1ow3OX-0003TO-79
 for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 15:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bSbtRZDIbn7lpwTb3ByCDbonLiBkZuojB4K05t2aq+8=; b=ShW+CycmFG3IWUsmtTvq5V+Ln3
 0wjRTESleHjN3kksm6l2zpZJ4imExljHqkNINvC8688shNCdYRh5ScyFQgfaPwUQBgbraRu92aDV3
 hnzdRI3Bfo1GxDvTVdtgiU/yAPx+Rc8QOamifHNB6IfraaPlobgVRUXW8idHOdBBOzoY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bSbtRZDIbn7lpwTb3ByCDbonLiBkZuojB4K05t2aq+8=; b=IG8Efdn4GIc8C3yCgU2iLY21H3
 xwqB3MN5Hf33n3aDwR80J2/LYBF3OowykGakuVziGycOny2hsn0jQbLerHhGjX48mMSi92AEzqren
 Eup07pQ+Njm9us5iZKobeim9LTjyHeiKja6rx7OeMbXmPjrSTVjIaW1jhFnaeM9/+d0U=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ow3OU-00Cdry-UD for v9fs-developer@lists.sourceforge.net;
 Fri, 18 Nov 2022 15:35:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=bSbtRZDIbn7lpwTb3ByCDbonLiBkZuojB4K05t2aq+8=; b=NmX/pcV4HIEtqg5X46qyiebYsA
 qLHyV6mDFWgNf3HB9J9pxPfq3SWUby1dKPuwkzyX7fhTi4kI++RTba/jpr0pTMHJybdmyn65AZW3f
 8KZgdv/xLRKatAX8Xhg+keIoA4U4HiXUXv4rqhWj2lystoJFV0ZkxJ2UyvGlc5HiUxSHz72TpYlso
 n20Fcb/jGZmAC1b3ySUi3eWXoSlyA/m+vSkpBMLozNihdjfZcT0W0t0ABs8tQwiwOVQp+v+eUICfq
 kPetRM2p+9hKZGxmlU8cDhIyXgaU94t0M8CWEvCzrn1McNQ6AWxkBKKfiERAbsYEGTbAU6xacbBkD
 wEWh/BoA2qSY6GondTfa7vKrFnni2uh9U7G/YppqeMGIO+zu+4N4MJn7Tca5kmkv2h5lg8sVQxCC3
 jfN3OJrfIbe1yirE+92Gl7tfJeRFpf+CwODIFLwzHzF2pGXVYkQGhdxOgtPbR6pz9VeOnkrXPnbQb
 sN7Yy6NQVvxo8wHPWUdwfsUZdyYdmm66dEiBVaQo0GclS2xQ5t+V8hmmHI2unVs/GKbPeVNWdJVlM
 1PKXLSH+bYshsHqLB4gQLcfD5Ylyihi4GYGMBdwCSfSa1m2JEjxEy7Xg02eRVdiSlNQqL64dXatb5
 J3mvlyvCTMmSxZvsulbnEoviz5XArdHDUuxdGCBMw=;
To: "Guozihua (Scott)" <guozihua@huawei.com>, asmadeus@codewreck.org
Date: Fri, 18 Nov 2022 16:34:35 +0100
Message-ID: <3743363.vbEDF3eA3V@silver>
In-Reply-To: <Y3ePOhpctTf7Buf8@codewreck.org>
References: <20221117091159.31533-1-guozihua@huawei.com>
 <a6aec93a-1166-1d8a-48de-767bc1eb2214@huawei.com>
 <Y3ePOhpctTf7Buf8@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Friday, November 18,
 2022 2:57:14 PM CET asmadeus@codewreck.org
 wrote: > Guozihua (Scott) wrote on Fri, Nov 18, 2022 at 06:18:16PM +0800:
 > > I retried the repro on your branch, the issue does not [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1ow3OU-00Cdry-UD
Subject: Re: [V9fs-developer] [PATCH 0/3 v2] 9p: Fix write overflow in
 p9_read_work
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 edumazet@google.com, v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gRnJpZGF5LCBOb3ZlbWJlciAxOCwgMjAyMiAyOjU3OjE0IFBNIENFVCBhc21hZGV1c0Bjb2Rl
d3JlY2sub3JnIHdyb3RlOgo+IEd1b3ppaHVhIChTY290dCkgd3JvdGUgb24gRnJpLCBOb3YgMTgs
IDIwMjIgYXQgMDY6MTg6MTZQTSArMDgwMDoKPiA+IEkgcmV0cmllZCB0aGUgcmVwcm8gb24geW91
ciBicmFuY2gsIHRoZSBpc3N1ZSBkb2VzIG5vdCByZXByb2R1Y2UuIFdoYXQKPiA+IGEgZ29vZCBw
YWlyIG9mIGV5ZXMgOinvvIEKPiAKPiBUaGFua3MhCj4gQnkgdGhlIHdheSB0aGUgb3JpZ2luYWwg
Y2hlY2sgYWxzbyBjb21wYXJlZCBzaXplIHRvIG1zaXplIGRpcmVjdGx5LAo+IHdpdGhvdXQgYW4g
b2Zmc2V0IGZvciBoZWFkZXJzLCBzbyB3aXRoIGhpbmRzaWdodCBpdCBsb29rcyBjbGVhciBlbm91
Z2gKPiB0aGF0IHRoZSBzaXplIGlzIHRoZSBmdWxsIHNpemUgaW5jbHVkaW5nIHRoZSBoZWFkZXIu
Cj4gCj4gSSdtIG5vdCBzdXJlIHdoeSBJIGNvbnZpbmNlZCBteXNlbGYgaXQgZGlkbid0Li4uCj4g
Cj4gQW55d2F5LCB0aGlzIG1hZGUgbWUgY2hlY2sgb3RoZXIgcGxhY2VzIHdoZXJlIHdlIG1pZ2h0
IGZhaWwgYXQgdGhpcyBhbmQKPiBJJ3ZlIGEgY291cGxlIG1vcmUgcGF0Y2hlczsgcGxlYXNlIHJl
dmlldyBpZiB5b3UgaGF2ZSB0aW1lLgo+IEknbGwgc2VuZCB0aGVtIGFsbCB0byBMaW51cyBuZXh0
IHdlZWsuLi4KPiAKCkFhaCwgdGhlIG9mZnNldCBpcyBhbHJlYWR5IGluY3JlbWVudGVkIGJlZm9y
ZSB0aGF0IGJsb2NrIGlzIGVudGVyZWQ6CgozMDMJZXJyID0gcDlfZmRfcmVhZChtLT5jbGllbnQs
IG0tPnJjLnNkYXRhICsgbS0+cmMub2Zmc2V0LAozMDQJCQkgbS0+cmMuY2FwYWNpdHkgLSBtLT5y
Yy5vZmZzZXQpOwouLi4KMzEyCW0tPnJjLm9mZnNldCArPSBlcnI7CjMxMwozMTQJLyogaGVhZGVy
IHJlYWQgaW4gKi8KMzE1CWlmICgoIW0tPnJyZXEpICYmIChtLT5yYy5vZmZzZXQgPT0gbS0+cmMu
Y2FwYWNpdHkpKSB7CgpBbmQgdGhlIGRhdGEgaXMgdGhlbiBjb3BpZWQgdG8gbS0+cnJlcS0+cmMu
c2RhdGEgd2l0aG91dCBhbnkgb2Zmc2V0LiBTbyB5ZXMsCnRoZXJlIHNob3VsZCBiZSBubyBgb2Zm
c2V0YCBpbiB0aGUgY2hlY2suCgpCZXN0IHJlZ2FyZHMsCkNocmlzdGlhbiBTY2hvZW5lYmVjawoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
