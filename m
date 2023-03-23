Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (unknown [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 046276C6CC5
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Mar 2023 16:59:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pfNLQ-0002SW-Oz;
	Thu, 23 Mar 2023 15:59:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pfNLI-0002SK-OC
 for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Mar 2023 15:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kc9qNhC3gE7NKRhvm925TdOssXExtS9eEcMXrknzwck=; b=JCC/eZ6OHWNjnYa4rOf3Fylhvr
 huiOnh8YVjcuFV1oPHu2xzJcoSE+jvvFuMlfaHPDQ5KTsUJhIcX/tupiWiqpl/NmIgw/ysIktqFkG
 GzaRC+99LPvi3BywSc9sN5b9Qtyiu9KajD572qC/Q60EfexKfzJAV10OU8mHo79wh5T8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kc9qNhC3gE7NKRhvm925TdOssXExtS9eEcMXrknzwck=; b=hpghqA4h2GVvmm+URaT0YH41S8
 8yX646Ky3kVctqQdJJy1RGYqYzwfSzjhCcmBnnxIGkNEeYt+EWUDNP1TNIU2uxVjxBBT/ssdU+edx
 YVLA3AQ2lHXZC9tCyLA+b6pb9NEMQD5NxM+wlf2hihUDOF5K0KHgEZIFl2CMFpSAXK8E=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pfNLE-000NZw-OV for v9fs-developer@lists.sourceforge.net;
 Thu, 23 Mar 2023 15:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=kc9qNhC3gE7NKRhvm925TdOssXExtS9eEcMXrknzwck=; b=jrS3itjotS7JI2GnFTIdPfohrK
 X+khFANTTsAXdTFyqqXzPQBYmzvPn99ZotipiKZeSklR/6CyPQYHXkajyW+WgdF99efMiWLnuC8H4
 k/pABTuSRoRdV4LaH7IbShTCbnlUBDKFPTNCkdpw7HtVcrc4gnmmql7XZa+cS/5p5G4/egrDwkQ+A
 lShueyyTeD8Zu09tgX/Msl72iNC0MirRGLHGePyThw6qM4Y+VidtHPfPq8Jx5v52IQ2hXxTQxDNxp
 p+Cdsqw03uAch1ANnws+6pUetmTuuSE+vfa86djvcGjq00eEhZ2L+0uK7a0FYzqRqlqmiEQl0r/js
 8c8gQ6kWnrQZs3NJwWn8s/0eFs3VQao6+xmKyeFPKxOXQLvvi+IiYbXuhYawQ3bEaQqIkP3ygggYP
 AU2rbQm4eJdoUCbSIhWXa6k8/3rz10ZasRu6VXHGXIHMgQuVTF5bZPZ9QVMec3YdObqDcMcC5nKJ3
 daEIO1gLruFWxo0QmYwcQ/Uyyj2loKU/Z/5JfUc+jXm6V/UnJQWPXy1DwZFxk7zgIyxbCbUc/ICNi
 1cW/pPH9GxHgaeVVuY/e4p1VlC5pl/p3HXNMI8ya2/uu4yxTgDOCMc5KRbe9vKIINzumrV7TsSnAC
 57xYzpc7vFRqbfEScH8eIh2/MF3xWvvEkilTeSbRM=;
To: Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 23 Mar 2023 16:58:51 +0100
Message-ID: <19996551.RFHlWWcHjK@silver>
In-Reply-To: <ZBb3ynXntaom/0hg@codewreck.org>
References: <20230211075023.137253-1-asmadeus@codewreck.org>
 <Y+ttlog6sth3vPHJ@codewreck.org> <ZBb3ynXntaom/0hg@codewreck.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sunday, March 19, 2023 12:53:46 PM CET Dominique Martinet
 wrote: > It's been a while but I didn't forget... > > Dominique Martinet
 wrote on Tue, Feb 14, 2023 at 08:16:38PM +0900: > > > Yes, apparen [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pfNLE-000NZw-OV
Subject: Re: [V9fs-developer] [PATCH 0/5] Take 3 at async RPCs and no longer
 looping forever on signals
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
Cc: Jens Axboe <axboe@kernel.dk>, Latchesar Ionkov <lucho@ionkov.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-kernel@vger.kernel.org,
 Pengfei Xu <pengfei.xu@intel.com>, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gU3VuZGF5LCBNYXJjaCAxOSwgMjAyMyAxMjo1Mzo0NiBQTSBDRVQgRG9taW5pcXVlIE1hcnRp
bmV0IHdyb3RlOgo+IEl0J3MgYmVlbiBhIHdoaWxlIGJ1dCBJIGRpZG4ndCBmb3JnZXQuLi4KPiAK
PiBEb21pbmlxdWUgTWFydGluZXQgd3JvdGUgb24gVHVlLCBGZWIgMTQsIDIwMjMgYXQgMDg6MTY6
MzhQTSArMDkwMDoKPiA+ID4gWWVzLCBhcHBhcmVudGx5IGl0IHRyaWVzIHRvIHdyaXRlIGRpcnR5
IHBhZ2VzIG9mIHRoZSBtYXBwZWQgZmlsZSBhbmQga2VlcHMKPiA+ID4gaGFuZ2luZyB0aGVyZSBb
ZnMvOXAvdmZzX2lub2RlX2RvdGwuYzo1ODZdOgo+ID4gCj4gPiBZZWFoLCBpdCdkIGhlbHAgdG8g
Z2V0IHRoZSB0cmFjZSBvZiB0aGUgdGhyZWFkIGFjdHVhbGx5IHRyeWluZyB0byBkbyB0aGUKPiA+
IElPLCBpZiBpdCBzdGlsbCBleGlzdHMuCj4gPiBJIGhhZCBzb21lIGhhbmdzIGluIHRoZSBjaGVj
ayB0aGF0IHRoZXJlIGFyZSBubyBmbHVzaCBpbiBmbGlnaHQgYXQgc29tZQo+ID4gcG9pbnQsIGFu
ZCBJIHRob3VnaHQgSSBmaXhlZCB0aGF0LCBidXQgSSBjYW4ndCByZWFsbHkgc2VlIGFueXdoZXJl
IGVsc2UKPiA+IHRoYXQnZCBzdGFydCBoYW5naW5nIHdpdGggdGhpcy4uLiBpdCdsbCBiZSBjbGVh
cmVyIGlmIEkgY2FuIHJlcHJvZHVjZS4KPiAKPiBJIGNvdWxkbid0IHJlcHJvZHVjZSB0aGlzIG9u
ZSwgYnV0IG1hbnVhbGx5IGluc3BlY3RpbmcKPiBwOV9jbGllbnRfd2FpdF9mbHVzaCBhZ2FpbiBJ
IG5vdGljZWQgdGhlIHdhaXRfZXZlbnRfaW50ZXJydXB0aWJsZSB3YXMKPiB3YWl0aW5nIG9uIHJl
cS0+Zmx1c2hlZF9yZXEtPndxIGJ1dCBsb29raW5nIGF0IHJlcS0+c3RhdHVzIGluIHRoZQo+IGNv
bmRpdGlvbjsgdGhhdCB3YXMgYW4gZXJyb3IuCj4gQWxzbywgd2UgaGF2ZSBhIHJlZiBvbiByZXEt
PmZsdXNoZWRfcmVxIGJ1dCBub3Qgb24gcmVxLCBzbwo+IHJlcS0+Zmx1c2hlZF9yZXEgd2Fzbid0
IHNhZmUuCj4gCj4gSSd2ZSBjaGFuZ2VkIHRoZSBjb2RlIHRvIGFkZCBhIHZhcmlhYmxlIGRpcmVj
dGx5IG9uIHJlcS0+Zmx1c2hlZF9yZXEgYW5kCj4gdXNlIGl0IGNvbnNpc3RlbnRseSwgSSdtIG5v
dCBzdXJlIHRoYXQncyB0aGUgcHJvYmxlbSB5b3UgcmFuIGludG8gYnV0IGl0Cj4gbWlnaHQgaGVs
cC4KPiBJdCdzIGJlZW4gYSB3aGlsZSBidXQgZG8geW91IHJlbWVtYmVyIGlmIHRoYXQgaGFuZyB3
YXMgY29uc2lzdGVudGx5Cj4gaGFwcGVuaW5nIG9uIHNodXRkb3duLCBvciB3YXMgaXQgYSBvbmUg
dGltZSB0aGluZz8KPiAKPiBFaXRoZXIgd2F5LCBJJ2QgYXBwcmVjaWF0ZSBpZiB5b3UgY291bGQg
dHJ5IG15IDlwLXRlc3QgYnJhbmNoIGFnYWluOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9tYXJ0aW5l
dGQvbGludXgvY29tbWl0cy85cC10ZXN0Cj4gCj4gCj4gV2l0aCB0aGF0IHNhaWQsIEkgZXhwZWN0
IHRoYXQgcDlfY2xpZW50X3dhaXRfcmVxIHdpbGwgY2F1c2UgaGFuZ3Mgb24KPiBicm9rZW4gc2Vy
dmVycy4KPiBJZiBjb25uZWN0aW9uIGRyb3BzIGhvcGVmdWxseSB0aGUgcmVxcyB3aWxsIGp1c3Qg
YmUgbWFya2VkIGFzIGVycm9yIGFuZAo+IGZyZWUgdGhlIHRocmVhZCwgYnV0IEkgY2FuIHNlZSBz
eXpib3QgY29tcGxhaW5pbmcgYWJvdXQgeWV0IGFub3RoZXIKPiB0aHJlYWQgc3R1Y2suLiBXZWxs
IGl0J3MgaW50ZXJydXB0aWJsZSBhdCBsZWFzdCwgYW5kIGJhaWxzIG91dCBvbgo+IEVSRVNUQVJU
U1lTLgoKSSBnYXZlIHlvdXIgY3VycmVudCB0ZXN0IGJyYW5jaCBzb21lIHNwaW5zIHRvZGF5LgoK
QW5kIHllcywgdGhlIHByb2JsZW0gZGlkIG5vdCBoYXBwZW4gcmVsaWFibHkgZWFjaCB0aW1lLCBi
dXQgY29uc2lzdGVudGx5CmVub3VnaCBmb3IgbWUgdG8gcmVwcm9kdWNlIGl0LgoKV2l0aCB5b3Vy
IGxhdGVzdCB0ZXN0IGJyYW5jaCBpdCBhcHBlYXJzIHRvIGhhdmUgbWl0aWdhdGVkIHRoZSBwcm9i
bGVtLiBPbmNlIGluCmEgd2hpbGUgb24gc2h1dGRvd24gSSBzZWUgaXQgYmxvY2tpbmcgZm9yIGZl
dyBtaW51dGVzLCBidXQgcmVjb3ZlcmluZzoKClsqKiAgICBdICgyIG9mIDMpIEEgc3RvcCBqb2Ig
aXMgcnVubmluZyBmb3Ig4oCmYXZlIFJhbmRvbSBTZWVkICgybWluIDM2cyAvIDEwbWluKQpbICA0
ODQuOTg2Mzg4XSBJTkZPOiB0YXNrIHN5c3RlbWQtdXNlci1ydTo4NzgyIGJsb2NrZWQgZm9yIG1v
cmUgdGhhbiAxMjAgc2Vjb25kcy4KWyAgNDg0Ljk5MDE1MF0gICAgICAgVGFpbnRlZDogRyAgICAg
ICAgICAgIEUgICAgICA2LjMuMC1yYzIrICM2MwpbICA0ODQuOTkyNTUzXSAiZWNobyAwID4gL3By
b2Mvc3lzL2tlcm5lbC9odW5nX3Rhc2tfdGltZW91dF9zZWNzIiBkaXNhYmxlcyB0aGlzIG1lc3Nh
Z2UuClsgIDQ4NC45OTM2NTddIHRhc2s6c3lzdGVtZC11c2VyLXJ1IHN0YXRlOkQgc3RhY2s6MCAg
ICAgcGlkOjg3ODIgIHBwaWQ6MSAgICAgIGZsYWdzOjB4MDAwMDAwMDQKWyAgNDg0Ljk5NDg2M10g
Q2FsbCBUcmFjZToKWyAgNDg0Ljk5NTM5OF0gIDxUQVNLPgpbICA0ODQuOTk1ODY2XSBfX3NjaGVk
dWxlIChrZXJuZWwvc2NoZWQvY29yZS5jOjUzMDQga2VybmVsL3NjaGVkL2NvcmUuYzo2NjIyKSAK
WyAgNDg0Ljk5NjYxNF0gc2NoZWR1bGUgKGtlcm5lbC9zY2hlZC9jb3JlLmM6NjY5OSAoZGlzY3Jp
bWluYXRvciAxKSkgClsgIDQ4NC45OTcyODNdIGRfYWxsb2NfcGFyYWxsZWwgKC4vaW5jbHVkZS9s
aW51eC9zcGlubG9jay5oOjM1MCBmcy9kY2FjaGUuYzoyNjI2IGZzL2RjYWNoZS5jOjI3MDcpIApb
ICA0ODQuOTk4MTUwXSA/IF9fcGZ4X2RlZmF1bHRfd2FrZV9mdW5jdGlvbiAoa2VybmVsL3NjaGVk
L2NvcmUuYzo2OTQ0KSAKWyAgNDg0Ljk5OTIxM10gX19sb29rdXBfc2xvdyAoZnMvbmFtZWkuYzox
NjcxKSAKWyAgNDg1LjAwMDAwNl0gd2Fsa19jb21wb25lbnQgKC4vaW5jbHVkZS9saW51eC9mcy5o
Ojc3MyBmcy9uYW1laS5jOjE3MDQgZnMvbmFtZWkuYzoxOTk0KSAKWyAgNDg1LjAwMDgwNV0gcGF0
aF9sb29rdXBhdCAoZnMvbmFtZWkuYzoyNDUxIGZzL25hbWVpLmM6MjQ3NSkgClsgIDQ4NS4wMDE1
OTRdIGZpbGVuYW1lX2xvb2t1cCAoZnMvbmFtZWkuYzoyNTA0KSAKWyAgNDg1LjAwMjQ1Ml0gPyBf
X2NoZWNrX29iamVjdF9zaXplIChtbS91c2VyY29weS5jOjE5NiBtbS91c2VyY29weS5jOjI1MSBt
bS91c2VyY29weS5jOjIxMykgClsgIDQ4NS4wMDM1MjNdID8gc3RybmNweV9mcm9tX3VzZXIgKC4v
aW5jbHVkZS9hc20tZ2VuZXJpYy9hY2Nlc3Nfb2suaDo0MCAuL2FyY2gveDg2L2luY2x1ZGUvYXNt
L3VhY2Nlc3MuaDo1NTEgbGliL3N0cm5jcHlfZnJvbV91c2VyLmM6MTM4KSAKWyAgNDg1LjAwNDUz
N10gdXNlcl9wYXRoX2F0X2VtcHR5IChmcy9uYW1laS5jOjI4NzkpIApbICA0ODUuMDA1NTA4XSBk
b19mYWNjZXNzYXQgKGZzL29wZW4uYzo0ODQpIApbICA0ODUuMDA2NDEwXSBkb19zeXNjYWxsXzY0
IChhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo1MCBhcmNoL3g4Ni9lbnRyeS9jb21tb24uYzo4MCkg
ClsgIDQ4NS4wMDcyODFdIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSAoYXJjaC94ODYv
ZW50cnkvZW50cnlfNjQuUzoxMjApIApbICA0ODUuMDA4NDk1XSBSSVA6IDAwMzM6MHg3ZjdiNDUy
N2Q4ZjcKWyAgNDg1LjAwOTM4MF0gUlNQOiAwMDJiOjAwMDA3ZmZjOWVlNzNjMDggRUZMQUdTOiAw
MDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxNQpbICA0ODUuMDExMTE4XSBSQVg6IGZm
ZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwN2Y3YjQ0ZWUyNjA4IFJDWDogMDAwMDdmN2I0NTI3ZDhm
NwpbICA0ODUuMDEyODMxXSBSRFg6IDAwMDAwMDAwMDAwMDAwMWMgUlNJOiAwMDAwMDAwMDAwMDAw
MDAwIFJESTogMDAwMDdmN2I0NGVkYTg2YgpbICA0ODUuMDE0NTYwXSBSQlA6IDAwMDAwMDAwMDAw
MDAwMDMgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIwOTogMDAwMDdmN2I0NTM2MGJlMApbICA0ODUu
MDE2MjQ2XSBSMTA6IDAwMDA1NTcxYWRlNzU2YzAgUjExOiAwMDAwMDAwMDAwMDAwMjQ2IFIxMjog
MDAwMDdmZmM5ZWU3M2NmOApbICA0ODUuMDE3OTM3XSBSMTM6IDAwMDA3ZmZjOWVlNzNkMTggUjE0
OiAwMDAwN2Y3YjQ0ZWUyNjEwIFIxNTogMDAwMDAwMDAwMDAwMDAwMApbICA0ODUuMDE5NjY5XSAg
PC9UQVNLPgoKSG93ZXZlciB0aGF0IGhhcHBlbnMgbm93IGJlZm9yZSB1bm1vdW50IHJ1bGUgaXMg
cmVhY2hlZCBvbiBzaHV0ZG93bj8KUHJldmlvdXNseSBpdCB3YXMgaGFuZ2luZyBhZnRlciB0aGUg
c2h1dGRvd24gcnVsZSB3YXMgcmVhY2hlZC4gRG9lcyB0aGlzIG1ha2UKc2Vuc2U/Cgo+ID4gQW55
d2F5LCBJIGZvdW5kIGFub3RoZXIgYnVnLCBqdXN0IHJ1bm5pbmcgLi9jb25maWd1cmUgb24gYSBy
YW5kb20gcHJvamVjdAo+ID4gKHBpY2tlZCBjb3JldXRpbHMgdGFyYmFsbCkgZmFpbHMgd2l0aCBp
bnRlcnJ1cHRlZCBzeXN0ZW0gY2FsbCA/IQo+IAo+IFRoYXQgb3RoZXIgYnVnIHdhcyB3ZWlyZCwg
SSBjb3VsZCByZXByb2R1Y2UgaXQgcmVsaWFibHkgdW50aWwgSSByZWJvb3RlZAo+IHRoZSBob3N0
IGJlY2F1c2Ugb2YgYW4gdW5yZWxhdGVkIG5mcyBidWcgb24gdGhlIGhvc3QsIGFuZCBhZnRlciBy
ZWJvb3QgSQo+IGNvdWxkbid0IHJlcHJvZHVjZSBhbnltb3JlLgo+IEknbGwgY2hhbGsgaXQgZG93
biB0byBidWdneSBob3N0L3dlaXJkIGhhcHBlbnN0YW5jZSwgYnV0IHNvbWV0aGluZyB0bwo+IHdh
dGNoIGZvciBpZiByYW5kb20gRUlOVFIgaGFwcGVuIGFnYWluIDovCgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
