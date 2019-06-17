Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B7147AC1
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Jun 2019 09:28:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hcm3w-0000mm-3Q; Mon, 17 Jun 2019 07:28:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <shuaibinglu@126.com>) id 1hcm3u-0000mf-Sk
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jun 2019 07:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gmRVQeFD/AvA76XiNCTGu/tE4Cf08n894khgBNT06SI=; b=HcnUcg1xHGf35EcGNtveCAdos3
 lFrsnbSAbgqiI9LMITxAxLOcb9w2pIVxCrHGKEqHUzSkgAQX6uMMHlWEgQ5hz7JowtFfFfh0uPXHA
 +AolO96E5EF+qxM6GLxMQE3WC+pkoLahfPl8LSDuRAazLIAHtTvjt5Ksd5bUt8zdisTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gmRVQeFD/AvA76XiNCTGu/tE4Cf08n894khgBNT06SI=; b=XBiq/B+ri3HNgpO6It2tL5YUxu
 mEMlJIFG4pA7vFhL+Q8+XKavFGs6xhNwI5Ef6EwUheX0hwATPfHqgCZOQ+Vb8qU2lD7cePADWNDUi
 Pv/OH8/Sm9zXmUvB7qSwJWm+PnSU6VdISZvBCq3dHG2r9y9gezWtAmZQLiXU5yMZXz3Y=;
Received: from mail-m963.mail.126.com ([123.126.96.3])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.90_1)
 id 1hcm3o-000Uyj-MO
 for v9fs-developer@lists.sourceforge.net; Mon, 17 Jun 2019 07:28:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Subject:From:Message-ID:Date:MIME-Version; bh=gmRVQ
 eFD/AvA76XiNCTGu/tE4Cf08n894khgBNT06SI=; b=RmmWGbfuaCwybYrxa9B2n
 0vsIOv+45oFhaYglUvudhvHLa8kkyUnVkTFksFJfxph+13IMctWkPX8e4InwT1Ww
 vsvup0N52OSQgO/nsKOuDMvD3a+bP8cAfG4ibb2BjCAqRN6qZWMl4g8Xb9uV7/68
 2Cug2IwENgFxvtbbmKic9s=
Received: from [172.20.10.3] (unknown [124.64.16.121])
 by smtp8 (Coremail) with SMTP id NORpCgCXti+bOQdd3TrACg--.697S2;
 Mon, 17 Jun 2019 14:56:29 +0800 (CST)
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20190613070854.10434-1-shuaibinglu@126.com>
 <20190613111027.GB9525@nautica>
From: Shuaibing Lu <shuaibinglu@126.com>
Message-ID: <692e328c-3d4a-c39c-0e6d-ba86828c6b41@126.com>
Date: Mon, 17 Jun 2019 14:56:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613111027.GB9525@nautica>
Content-Language: en-US
X-CM-TRANSID: NORpCgCXti+bOQdd3TrACg--.697S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxXrWrZr17GF1rCw1DXF17Awb_yoW5try5pr
 sxKFWxCw4ktryjva1jya1kJF10yF4kA3W3Jr1fKr12k3WkGr1kAa4UtF4jgFyUur98AFy7
 JFyjq390qr1UJw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07bIXocUUUUU=
X-Originating-IP: [124.64.16.121]
X-CM-SenderInfo: 5vkxtxpelqwzbx6rjloofrz/1tbinx3Wq1pD8zTPZwAAsJ
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (shuaibinglu[at]126.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [123.126.96.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hcm3o-000Uyj-MO
Subject: Re: [V9fs-developer] [PATCH] 9p: Transport error uninitialized
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5ZyoIDIwMTkvNi8xMyDkuIvljYg3OjEwLCBEb21pbmlxdWUgTWFydGluZXQg5YaZ6YGTOgo+IEx1
IFNodWFpYmluZyB3cm90ZSBvbiBUaHUsIEp1biAxMywgMjAxOToKPj4gVGhlIHA5X3RhZ19hbGxv
YygpIGRvZXMgbm90IGluaXRpYWxpemUgdGhlIHRyYW5zcG9ydCBlcnJvciB0X2VyciBmaWVsZC4K
Pj4gVGhlIHN0cnVjdCBwOV9yZXFfdCAqcmVxIGlzIGFsbG9jYXRlZCBhbmQgc3RvcmVkIGluIGEg
c3RydWN0IHA5X2NsaWVudAo+PiB2YXJpYWJsZS4gVGhlIGZpZWxkIHRfZXJyIGlzIG5ldmVyIGlu
aXRpYWxpemVkIGJlZm9yZSBwOV9jb25uX2NhbmNlbCgpCj4+IGNoZWNrcyBpdHMgdmFsdWUuCj4+
Cj4+IEtVTVNBTihLZXJuZWxVbmluaXRpYWxpemVkTWVtb3J5U2FudGl6ZXIsIGEgbmV3IGVycm9y
IGRldGVjdGlvbiB0b29sKQo+PiByZXBvcnRzIHRoaXMgYnVnLgo+Pgo+PiA9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4g
QlVHOiBLVU1TQU46IHVzZSBvZiB1bmluaXRpYWxpemVkIG1lbW9yeSBpbiBwOV9jb25uX2NhbmNl
bCsweDJkOS8weDNiMAo+PiBSZWFkIG9mIHNpemUgNCBhdCBhZGRyIGZmZmY4ODgwNWY5YjYwMGMg
YnkgdGFzayBrd29ya2VyLzE6Mi8xMjE2Cj4+Cj4+IENQVTogMSBQSUQ6IDEyMTYgQ29tbToga3dv
cmtlci8xOjIgTm90IHRhaW50ZWQgNS4yLjAtcmM0KyAjMjgKPj4gSGFyZHdhcmUgbmFtZTogUUVN
VSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgVWJ1bnR1LTEuOC4yLTF1
YnVudHUxIDA0LzAxLzIwMTQKPj4gV29ya3F1ZXVlOiBldmVudHMgcDlfd3JpdGVfd29yawo+PiBD
YWxsIFRyYWNlOgo+PiAgZHVtcF9zdGFjaysweDc1LzB4YWUKPj4gIF9fa3Vtc2FuX3JlcG9ydCsw
eDE3Yy8weDNlNgo+PiAga3Vtc2FuX3JlcG9ydCsweGUvMHgyMAo+PiAgcDlfY29ubl9jYW5jZWwr
MHgyZDkvMHgzYjAKPj4gIHA5X3dyaXRlX3dvcmsrMHgxODMvMHg0YTAKPj4gIHByb2Nlc3Nfb25l
X3dvcmsrMHg0ZDEvMHg4YzAKPj4gIHdvcmtlcl90aHJlYWQrMHg2ZS8weDc4MAo+PiAga3RocmVh
ZCsweDFjYS8weDFmMAo+PiAgcmV0X2Zyb21fZm9yaysweDM1LzB4NDAKPj4KPj4gQWxsb2NhdGVk
IGJ5IHRhc2sgMTk3OToKPj4gIHNhdmVfc3RhY2srMHgxOS8weDgwCj4+ICBfX2t1bXNhbl9rbWFs
bG9jLmNvbnN0cHJvcC4zKzB4YmMvMHgxMjAKPj4gIGttZW1fY2FjaGVfYWxsb2MrMHhhNy8weDE3
MAo+PiAgcDlfY2xpZW50X3ByZXBhcmVfcmVxLnBhcnQuOSsweDNiLzB4MzgwCj4+ICBwOV9jbGll
bnRfcnBjKzB4MTVlLzB4ODgwCj4+ICBwOV9jbGllbnRfY3JlYXRlKzB4M2QwLzB4YWMwCj4+ICB2
OWZzX3Nlc3Npb25faW5pdCsweDE5Mi8weGM4MAo+PiAgdjlmc19tb3VudCsweDY3LzB4NDcwCj4+
ICBsZWdhY3lfZ2V0X3RyZWUrMHg3MC8weGQwCj4+ICB2ZnNfZ2V0X3RyZWUrMHg0YS8weDFjMAo+
PiAgZG9fbW91bnQrMHhiYTkvMHhmOTAKPj4gIGtzeXNfbW91bnQrMHhhOC8weDEyMAo+PiAgX194
NjRfc3lzX21vdW50KzB4NjIvMHg3MAo+PiAgZG9fc3lzY2FsbF82NCsweDZkLzB4MWUwCj4+ICBl
bnRyeV9TWVNDQUxMXzY0X2FmdGVyX2h3ZnJhbWUrMHg0NC8weGE5Cj4+Cj4+IEZyZWVkIGJ5IHRh
c2sgMDoKPj4gKHN0YWNrIGlzIG5vdCBhdmFpbGFibGUpCj4+Cj4+IFRoZSBidWdneSBhZGRyZXNz
IGJlbG9uZ3MgdG8gdGhlIG9iamVjdCBhdCBmZmZmODg4MDVmOWI2MDA4Cj4+ICB3aGljaCBiZWxv
bmdzIHRvIHRoZSBjYWNoZSBwOV9yZXFfdCBvZiBzaXplIDE0NAo+PiBUaGUgYnVnZ3kgYWRkcmVz
cyBpcyBsb2NhdGVkIDQgYnl0ZXMgaW5zaWRlIG9mCj4+ICAxNDQtYnl0ZSByZWdpb24gW2ZmZmY4
ODgwNWY5YjYwMDgsIGZmZmY4ODgwNWY5YjYwOTgpCj4+IFRoZSBidWdneSBhZGRyZXNzIGJlbG9u
Z3MgdG8gdGhlIHBhZ2U6Cj4+IHBhZ2U6ZmZmZmVhMDAwMTdlNmQ4MCByZWZjb3VudDoxIG1hcGNv
dW50OjAgbWFwcGluZzpmZmZmODg4MDY4YjYzNzQwIGluZGV4OjB4ZmZmZjg4ODA1ZjliN2Q5MCBj
b21wb3VuZF9tYXBjb3VudDogMAo+PiBmbGFnczogMHgxMDAwMDAwMDAwMTAyMDAoc2xhYnxoZWFk
KQo+PiByYXc6IDAxMDAwMDAwMDAwMTAyMDAgZmZmZjg4ODA2OGI2NjQ1MCBmZmZmODg4MDY4YjY2
NDUwIGZmZmY4ODgwNjhiNjM3NDAKPj4gcmF3OiBmZmZmODg4MDVmOWI3ZDkwIDAwMDAwMDAwMDAx
MDAwMDEgMDAwMDAwMDFmZmZmZmZmZiAwMDAwMDAwMDAwMDAwMDAwCj4+IHBhZ2UgZHVtcGVkIGJl
Y2F1c2U6IGt1bXNhbjogYmFkIGFjY2VzcyBkZXRlY3RlZAo+PiA9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPj4KPj4gU2ln
bmVkLW9mZi1ieTogTHUgU2h1YWliaW5nIDxzaHVhaWJpbmdsdUAxMjYuY29tPgo+IExvb2tzIGdv
b2QgdG8gbWUsIHdpbGwgcXVldWUgaXQgdXAgZm9yIC1uZXh0IGFmdGVyIEkndmUgaGFkIHRpbWUg
dG8gcnVuCj4gc29tZSB0ZXN0cyAtIHByb2JhYmx5IGVhcmx5IG5leHQgd2Vlay4KPgo+IFRoaXMg
bWFkZSBtZSByZWFsaXplIHRoYXQgdGhpcyByZWZjb3VudF9zZXQgaXMgdG9vIGxhdGUsIGl0IGlz
IHBvc3NpYmxlCj4gaW4gdGhlb3J5IHRvIGZpbmQgdGhlIHJlcXVlc3Qgd2l0aCBwOV90YWdfbG9v
a3VwIGFzIHNvb24gYXMgdGhlIHRhZwo+IGFsbG9jIHdvcmtlZCBzbyBib3RoIHRoaXMgcmVxLT50
X2VyciBhbmQgcmVmY291bnQgaW5pdGlhbGl6YXRpb24gc2hvdWxkCj4gZ28gYmVmb3JlIHRoZSBp
ZHIgY2h1bmsgd2l0aCB0aGUgb3RoZXIgZmllbGQgaW5pdGlhbGl6YXRpb25zLgo+Cj4gSSBhbHNv
IGNoZWNrZWQgYnkgdGhlIHdheSB0aGF0IG5vIG90aGVyIGZpZWxkcyB3ZXJlIGZvcmdvdHRlbiwg
dGhlIG9ubHkKPiBmaWVsZCB0aGF0IGlzIG5vdCBpbml0aWFsaXplZCBub3cgaXMgLT5hdXgsIGJ1
dCB0aGF0IGZpZWxkIGlzIG5ldmVyIHVzZWQKPiBzbyBpdCBtaWdodCBiZSBqdXN0IGFzIGZhc3Qg
dG8gcmVtb3ZlIHRoZSBmaWVsZCBpbnN0ZWFkLi4uCj4gSSdsbCBzdWJtaXQgYSBjb3VwbGUgb2Yg
cGF0Y2hlcyB0byBtb3ZlIHRoZXNlIHR3byBpbml0cyB1cCBhbmQgcmVtb3ZlCj4gdGhlIGF1eCBm
aWVsZCB3aGVuIEkgZmluZCB0aW1lLgo+Cj4KPiBUaGFua3MhCgpUaGFua3MgZm9yIHlvdXIgcmVw
bHkuIFRoZSBrdW1zYW4gdG9vbCBmaW5kcyBvbmx5IG9uZSBmaWVsZCBpcyB1c2VkCmluaXRpYWxp
emVkLiBUaGUgLT5hdXggZmllbGQgY291bGQKCmJlIHJlcGxhY2VkLgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
