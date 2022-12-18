Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A51B64FD58
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 02:06:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6i8A-0006vh-6O;
	Sun, 18 Dec 2022 01:06:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6i7w-0006vT-UE
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 01:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CU/eyyyK8TwQFiwwwOIA2tQ1Rpw9x9qntSrQp9qm0zw=; b=hvO6UCsY14pAPONteHiQoIlrjC
 kDlqyaMFOMUKyhz22tTmP3GHdFoVfjTZrNx85K6VNnwcQfts+WHlCtFUD5Qjxr6KyfiajsZQs/QK/
 1egYKlItdhQz3OMakfVsRR1KYbpr2o8kM684nayqJovqSCzVU7z+VYoBmMgfubEEyjTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CU/eyyyK8TwQFiwwwOIA2tQ1Rpw9x9qntSrQp9qm0zw=; b=R46Fafb0Q9S45GJSZPDoV6NrU5
 MGumQcqOuxmdfjhCLDkDUQoELREmz50Y5LjYtPRHM5jJUKWYbmwFW0iKhVSUkwVf0HtHyE7Juda8S
 9jNVkLAVGMnQORo1J7b6eu9zE4M8xycNG1fGyrBMcbjgxX8Jj6o+UTq9tDza2+gN3WlY=;
Received: from ms11p00im-qufo17291401.me.com ([17.58.38.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6i7r-00053m-Pc for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 01:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671325551;
 bh=CU/eyyyK8TwQFiwwwOIA2tQ1Rpw9x9qntSrQp9qm0zw=;
 h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
 b=vyW+mMByV2K4utfBidJJ/C1eVF7GzBMiDuRsZlGolhKrlKloqwKaECoHwLZp9IwG7
 hXHJdbgWDh6An2PRbYYiuBkjxgVn0XEx7qy6dgIq8ylT6ChJSviYgqsZUS/u0l/0hE
 iOuBh4B0nnVIndP5gNeSey5ATRMFtWsAZH/fNKOJQv0ZKNCS8kvyTVYFh/QjmmAa9h
 lOK/Q3m0sYsNzYd3c1rOh0HQkUAsKLOT5fZBDR2NKLlfR61Ikj+PY5MtVx2E3mlTxr
 3LYQ5eFYCpcjo5LV+81LPXwN5lAIjOCJIGOKSn+P4YC0O9vU9zxs3LbJIgAMVOaTjT
 ddu3Vs/guNyjQ==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17291401.me.com (Postfix) with ESMTPSA id 2E9498E053F;
 Sun, 18 Dec 2022 01:05:50 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
In-Reply-To: <Y55Z2DwZgRG+9zW3@codewreck.org>
Date: Sat, 17 Dec 2022 19:05:38 -0600
Message-Id: <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
To: asmadeus@codewreck.org
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Proofpoint-GUID: OA9RlOlds9TOEa1ab8ML_c9csJM0hqAT
X-Proofpoint-ORIG-GUID: OA9RlOlds9TOEa1ab8ML_c9csJM0hqAT
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.816,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-18=5F01:2022-01-14=5F01,2022-01-18=5F01,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 phishscore=0
 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 mlxlogscore=615 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180009
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > On Dec 17, 2022, at 6:07 PM, > > Eric Van Hensbergen wrote
 on Sat, Dec 17, 2022 at 06:52:06PM +0000: >> The writeback_fid fallback code
 assumes a root uid fallback which >> breaks many server conf [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [evanhensbergen[at]icloud.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [17.58.38.43 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.38.43 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6i7r-00053m-Pc
Subject: Re: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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
From: evanhensbergen--- via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: evanhensbergen@icloud.com
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, Ron Minnich <rminnich@gmail.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Cgo+IE9uIERlYyAxNywgMjAyMiwgYXQgNjowNyBQTSwgYXNtYWRldXNAY29kZXdyZWNrLm9yZyB3
cm90ZToKPiAKPiBFcmljIFZhbiBIZW5zYmVyZ2VuIHdyb3RlIG9uIFNhdCwgRGVjIDE3LCAyMDIy
IGF0IDA2OjUyOjA2UE0gKzAwMDA6Cj4+IFRoZSB3cml0ZWJhY2tfZmlkIGZhbGxiYWNrIGNvZGUg
YXNzdW1lcyBhIHJvb3QgdWlkIGZhbGxiYWNrIHdoaWNoCj4+IGJyZWFrcyBtYW55IHNlcnZlciBj
b25maWd1cmF0aW9ucyAod2hpY2ggZG9uJ3QgcnVuIGFzIHJvb3QpLiAgVGhpcwo+PiBwYXRjaCBz
d2l0Y2hlcyB0byBnZW5lcmljIGxvb2t1cCB3aGljaCB3aWxsIGZvbGxvdyBhcmd1bWVudAo+PiBn
dWlkZW5jZSBvbiBhY2Nlc3MgbW9kZXMgYW5kIGRlZmF1bHQgaWRzIHRvIHVzZSBvbiBmYWlsdXJl
Lgo+IAo+IFVuZm9ydHVuYXRlbHkgdGhpcyBvbmUgd2lsbCBicmVhayB3cml0ZXMgdG8gYSBmaWxl
IGNyZWF0ZWQgYXMgNDAwIEkKPiB0aGluawo+IFRoYXQncyB0aGUgbWFpbiByZWFzb24gd2UgaGF2
ZSB0aGlzIHdyaXRlYmFjayBmaWQgYWZhaWsgLS0gdGhlcmUgYXJlCj4gY2FzZXMgd2hlcmUgdGhl
IHVzZXIgc2hvdWxkIGJlIGFibGUgdG8gd3JpdGUgdG8gdGhlIGZpbGUsIGJ1dCBhIHBsYWluCj4g
b3Blbi93cml0ZSB3b24ndCB3b3JrLi4uIEkgY2FuJ3QgdGhpbmsgb2YgYW55dGhpbmcgZWxzZSB0
aGFuIG9wZW4gNDAwCj4gcmlnaHQgbm93IHRob3VnaAo+IAoKSeKAmWxsIHRyeSBhbmQgY3JhZnQg
YSB0ZXN0IGNhc2UgZm9yIHRoaXMsIGJ1dCBJIHRoaW5rIGl0IHdvcmtzPwpUaGF0IGJlaW5nIHNh
aWQsIEkgaGF2ZW7igJl0IGJlZW4gdHJ5aW5nIHRoZSB4ZnN0ZXN0cywganVzdCBmc3ggYW5kIGJl
bmNoLgoKPiBJJ20gc3VyZSB0aGVyZSdzIGFuIHhmc19pbyBjb21tYW5kIGFuZCB4ZnN0ZXN0IGZv
ciB0aGF0LCBidXQgZm9yIG5vdzoKPiBweXRob24zIC1jICdpbXBvcnQgb3M7IGYgPSBvcy5vcGVu
KCJ0ZXN0ZmlsZSIsIG9zLk9fQ1JFQVQgKyBvcy5PX1JEV1IsIDBvNDAwKTsgb3Mud3JpdGUoZiwg
YiJva1xuIiknCj4gCj4gaWlyYyBnYW5lc2hhIHJ1bm5pbmcgYXMgbm9uLXJvb3QganVzdCBpZ25v
cmVzIHJvb3QgcmVxdWVzdHMgYW5kIG9wZW5zIGFzCj4gY3VycmVudCB1c2VyLS0gdGhpcyB3b24n
dCB3b3JrIGZvciB0aGlzIHBhcnRpY3VsYXIgY2FzZSwgYnV0IG1pZ2h0IGJlCj4gZ29vZCBlbm91
Z2ggZm9yIHlvdS4uLiBXaXRoIHRoYXQgc2FpZDoKClllYWgsIHRoZSByZWFsIHByb2JsZW0gSSBy
YW4gaW50byB0aGlzIHdhcyBpZiB0aGUgc2VydmVyIGlzIHJ1bm5pbmcgYXMgbm9uLXJvb3QgdGhp
cyBjYXVzZXMgaXNzdWVzIGFuZCBJIHdhcyB0ZXN0aW5nIGFnYWluc3QgY3B1ICh3aGljaCBkb2Vz
buKAmXQgcnVuIGFzIHJvb3QpLiAgSSBuZWVkIHRvIGdvIGJhY2sgYW5kIGNoZWNrLCBidXQgaWYg
eW91IGFyZSBydW5uaW5nIGFzIHJvb3QgYW5kIGRmdHVpZD0wIHRoZW4gdGhlIGJlaGF2aW9yIHNo
b3VsZCBiZSB0aGUgc2FtZSBhcyBiZWZvcmU/CkluIGFueSBjYXNlLCBJ4oCZbGwgdHJ5IHRvIGdv
IGJhY2sgYW5kIG1ha2UgdGhpcyB3b3JrIOKAlCBteSBiaWcgaXNzdWUgd2FzIGFsd2F5cyB1c2lu
ZyB1aWQgMCByZWdhcmRsZXNzIG9mIHdoYXQgbW91bnQgb3B0aW9ucyBzYWlkIGlzIFdvbmcuCgo+
IAo+PiBUaGVyZSBpcyBhIGRlZXBlciB1bmRlcmx5aW5nIHByb2JsZW0gd2l0aCB3cml0ZWJhY2tf
ZmlkcyBpbiB0aGF0Cj4+IHRoaXMgZmFsbGJhY2sgaXMgdG9vIHN0YW5kYXJkIGFuZCBub3QgYW4g
ZXhjZXB0aW9uIGR1ZSB0byB0aGUgd2F5Cj4+IHdyaXRlYmFjayBtb2RlIHdvcmtzIGluIHRoZSBj
dXJyZW50IGltcGxlbWVudGF0aW9uLiAgU3Vic2VxdWVudAo+PiBwYXRjaGVzIHdpbGwgdHJ5IHRv
IGFzc29jaWF0ZSB3cml0ZWJhY2sgZmlkcyBmcm9tIHRoZSBvcmlnaW5hbCB1c2VyCj4+IGVpdGhl
ciBieSBmbHVzaGluZyBvbiBjbG9zZSBvciBieSBob2xkaW5nIG9udG8gZmlkIHVudGlsIHdyaXRl
YmFjawo+PiBjb21wbGV0ZXMuCj4gCj4gSWYgd2UgY2FuIGFkZHJlc3MgdGhpcyBwcm9ibGVtIHRo
b3VnaCBJIGFncmVlIHdlIHNob3VsZCBzdG9wIHVzaW5nCj4gd3JpZWJhY2sgZmlkcyBhcyBtdWNo
IGFzIHdlIGRvLgo+IE5vdyBmaWRzIGFyZSByZWZjb3VudGVkLCBJIHRoaW5rIHdlIGNvdWxkIGp1
c3QgdXNlIHRoZSBub3JtYWwgZmlkIGFzCj4gd3JpdGViYWNrIGZpZCAoZ2V0dGluZyBhIHJlZiks
IGFuZCB0aGUgcmVndWxhciBjbG9zZSB3aWxsIG5vdCBjbHVuayBpdAo+IHNvIGRlbGF5ZWQgSU9z
IHdpbGwgcGFzcy4KPiAKPiBXb3J0aCBhIHRyeT8KClllYWgsIHRoYXQgKHVzaW5nIHJlZ3VsYXIg
ZmlkcykgaXMgZXhhY3RseSB3aGF0IEkgYW0gZG9pbmcgaW4gbXkgd3JpdGUgYmFjay1maXggcGF0
Y2ggd2hpY2ggaXNu4oCZdCBwYXJ0IG9mIHRoaXMgc2VyaWVzLiAgSSB3YXMgc3RpbGwgaHVudGlu
ZyBhIGZldyBidWdzLCBidXQgSSB0aGluayBJIG5haWxlZCB0aGVtIHRvZGF5LiAgSSBoYXZlIHRv
IGRvIGEgbW9yZSBleHRlbnNpdmUgdGVzdCBzd2VlcCBvZiB0aGUgZGlmZmVyZW50IGNvbmZpZ3Ms
IGJ1dCB1bml0IHRlc3RzIHNlZW0gZ29vZCB0byBnbyBub3cgc28gaWYgSSBlbmQgdXAgcmV3b3Jr
aW5nIHRoZSBwYXRjaCBzZXQgdG8gYWRkcmVzcyB5b3VyIGNvbW1lbnQgYWJvdmUsIEkgbWF5IGp1
c3QgZ28gYWhlYWQgYW5kIGFkZCBpdCB0byB0aGUgcmVzdWJtaXQgc2V0LiAgSG93ZXZlciwgSSBh
bHNvIGdvIGFoZWFkIGFuZCBmbHVzaCBvbiBjbG9zZS9jbHVuayDigJQgYW5kIHRoYXQgZ2V0cyBy
aWQgb2YgdGhlIGRlbGF5ZWQgd3JpdGUgYmFjayB3aGljaCBJIHRoaW5rIGlzIGFjdHVhbGx5IHBy
ZWZlcmFibGUgYW55d2F5cy4gIEkgbWF5IHJlLWludHJvZHVjZSBpdCB3aXRoIHRlbXBvcmFsIGNh
Y2hpbmcsIGJ1dCBpdHMganVzdCBzbyBwcm9ibGVtYXRpY+KApi4uCgogICAgICAgICAtRXJpYwoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVs
b3Blcgo=
