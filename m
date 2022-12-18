Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C80E4650189
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 17:33:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6wbM-0002yU-Rk;
	Sun, 18 Dec 2022 16:33:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1p6wbL-0002yO-4c
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:To:Cc:In-Reply-To:Date:Subject:
 Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3nWzPwXcSRkYfDKypG4wzQJ4U8Q5TTBocZ6MknDXci0=; b=DgsGlLq5Cp4dqzzlvwbrCzvlgm
 ARHV0TyZBC3nfJRCQlBsIDCb97CEp3C/+8uCiUSpG1tGH7K8e0FTV/tkmc1XmhkeKnQXhdMT+97rd
 VVoxjfndo8WUYwvULKSYf7scp6xD+Alb4ccP3NGtx9XEnuFmtirQi4bs1T3m2un6o4/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:Content-Type:
 Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3nWzPwXcSRkYfDKypG4wzQJ4U8Q5TTBocZ6MknDXci0=; b=IozFHSLdWNNjy7lv/MKOn0jE9L
 tn0ISselg4+uOk3HeK97V++0g0d9W14GkqBm+7E134OwGS+LAIk6MclUrqktvX93IR/94Fe1NiI20
 QgkGDi8xMfBqSoPA9TyYcJmNJIslpsHkk6HVEwBopK9uKTdsoYdVwdJpLuCTT0t8JpC4=;
Received: from ms11p00im-qufo17282101.me.com ([17.58.38.58])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6wbH-003VGK-Aa for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 16:33:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1671381189;
 bh=3nWzPwXcSRkYfDKypG4wzQJ4U8Q5TTBocZ6MknDXci0=;
 h=From:Message-Id:Content-Type:Mime-Version:Subject:Date:To;
 b=snOuK3pVdP6GfHQbYVkRfLiCNPCxKYbpgr2zRWtmi0iQmmLl6xo375G+0wmIA7ncf
 EmR3JYRiSm75QF/72uh3vIwsbRwTdvBsHRWZoydQ2zICjWHqYDRm/AF6acfrYeLbkQ
 EH+wXwv0GXlXzP4du/mbX95gek9r55RrmeXGnXYynCsyuUKWX+yUp8ciimiTRJP7op
 7cwn3TjW/GxXg1wNUv/aFIDeBF5CZDoP5uuZwfcD01In1l6XB/+rydThqG94AKEAIM
 EF7j0d+nq6UkG+1EmRgOdWhMFrT+PIEcXaKU630cgzyNhvV+ADbFCHwVuaH3BPSVyd
 HymmJZXy0siJQ==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17282101.me.com (Postfix) with ESMTPSA id 40BFA8C0492;
 Sun, 18 Dec 2022 16:33:08 +0000 (UTC)
Message-Id: <864E1007-CBCF-40C7-B438-A76C3065AFC9@icloud.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.200.110.1.12\))
Date: Sun, 18 Dec 2022 10:32:57 -0600
In-Reply-To: <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
To: Eric Van Hensbergen <evanhensbergen@icloud.com>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
 <Y55Z2DwZgRG+9zW3@codewreck.org>
 <3343B7A9-2D1D-4A41-859E-B04AF90152FA@icloud.com>
X-Mailer: Apple Mail (2.3731.200.110.1.12)
X-Proofpoint-ORIG-GUID: RTYpgNYjgw2KV0t4N2hN0eKVCngz_U5G
X-Proofpoint-GUID: RTYpgNYjgw2KV0t4N2hN0eKVCngz_U5G
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2212180155
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Okay, reproduced the error you suspected on the patch. It’s
    kind of a pain because the code as is won’t work unless I’m running the
    file server as root and changing all the servers to ignore req [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [evanhensbergen[at]icloud.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.58 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.58 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1p6wbH-003VGK-Aa
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
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

T2theSwgcmVwcm9kdWNlZCB0aGUgZXJyb3IgeW91IHN1c3BlY3RlZCBvbiB0aGUgcGF0Y2guICBJ
dOKAmXMga2luZCBvZiBhIHBhaW4gYmVjYXVzZSB0aGUgY29kZSBhcyBpcyB3b27igJl0IHdvcmsg
dW5sZXNzIEnigJltIHJ1bm5pbmcgdGhlIGZpbGUgc2VydmVyIGFzIHJvb3QgYW5kIGNoYW5naW5n
IGFsbCB0aGUgc2VydmVycyB0byBpZ25vcmUgcmVxdWVzdHMgc2VlbXMgb2ZmLiAgSXQgYWxzbyBv
Y2N1cnJlZCB0byBtZSB0aGF0IGhhdmluZyBhIHJvb3QgUi9XIHdyaXRlIGJhY2sgY291bGQgYmUg
YSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5LiAgSSB0cmllZCBwYXRjaGluZyBpdCB3aXRoIGRmbHR1
aWQvZGZsdGdpZCwgYnV0IG9ubHkgcm9vdCBjYW4gb3ZlcnJpZGUgdGhlIG1vZGVzIHNvIHRoYXQg
ZG9lc27igJl0IHdvcmsuCgpTaW5jZSBJIGhhdmUgdGhlIGJldHRlciB3cml0ZSBiYWNrIGZpeCB0
ZXN0aW5nIG9rYXksIHdlIGNvdWxkIGRyb3AgdGhpcyBwYXRjaCBmcm9tIHRoZSBzZXJpZXMgYW5k
IEkgY291bGQganVzdCBmb2N1cyBvbiBnZXR0aW5nIHRoYXQgcGF0Y2ggcmVhZHkgKHdoaWNoIEkg
c2hvdWxkIGJlIGFibGUgdG8gZG8gdG9kYXkpLiAgSXQgZG9lcyBzZWVtIHRvIHdvcmsgd2l0aCB0
aGUgcHl0aG9uIHRlc3QgY2FzZSB5b3UgZ2F2ZSwgc28gaXQgZG9lc27igJl0IGhhdmUgdGhlIHNh
bWUgaXNzdWVzLgoKVGhvdWdodHM/CgogICAgICAgLUVyaWMKCgo+IE9uIERlYyAxNywgMjAyMiwg
YXQgNzowNSBQTSwgZXZhbmhlbnNiZXJnZW4tLS0gdmlhIFY5ZnMtZGV2ZWxvcGVyIDx2OWZzLWRl
dmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+IHdyb3RlOgo+IAo+IAo+IAo+PiBPbiBEZWMg
MTcsIDIwMjIsIGF0IDY6MDcgUE0sIGFzbWFkZXVzQGNvZGV3cmVjay5vcmcgd3JvdGU6Cj4+IAo+
PiBFcmljIFZhbiBIZW5zYmVyZ2VuIHdyb3RlIG9uIFNhdCwgRGVjIDE3LCAyMDIyIGF0IDA2OjUy
OjA2UE0gKzAwMDA6Cj4+PiBUaGUgd3JpdGViYWNrX2ZpZCBmYWxsYmFjayBjb2RlIGFzc3VtZXMg
YSByb290IHVpZCBmYWxsYmFjayB3aGljaAo+Pj4gYnJlYWtzIG1hbnkgc2VydmVyIGNvbmZpZ3Vy
YXRpb25zICh3aGljaCBkb24ndCBydW4gYXMgcm9vdCkuICBUaGlzCj4+PiBwYXRjaCBzd2l0Y2hl
cyB0byBnZW5lcmljIGxvb2t1cCB3aGljaCB3aWxsIGZvbGxvdyBhcmd1bWVudAo+Pj4gZ3VpZGVu
Y2Ugb24gYWNjZXNzIG1vZGVzIGFuZCBkZWZhdWx0IGlkcyB0byB1c2Ugb24gZmFpbHVyZS4KPj4g
Cj4+IFVuZm9ydHVuYXRlbHkgdGhpcyBvbmUgd2lsbCBicmVhayB3cml0ZXMgdG8gYSBmaWxlIGNy
ZWF0ZWQgYXMgNDAwIEkKPj4gdGhpbmsKPj4gVGhhdCdzIHRoZSBtYWluIHJlYXNvbiB3ZSBoYXZl
IHRoaXMgd3JpdGViYWNrIGZpZCBhZmFpayAtLSB0aGVyZSBhcmUKPj4gY2FzZXMgd2hlcmUgdGhl
IHVzZXIgc2hvdWxkIGJlIGFibGUgdG8gd3JpdGUgdG8gdGhlIGZpbGUsIGJ1dCBhIHBsYWluCj4+
IG9wZW4vd3JpdGUgd29uJ3Qgd29yay4uLiBJIGNhbid0IHRoaW5rIG9mIGFueXRoaW5nIGVsc2Ug
dGhhbiBvcGVuIDQwMAo+PiByaWdodCBub3cgdGhvdWdoCj4+IAo+IAo+IEnigJlsbCB0cnkgYW5k
IGNyYWZ0IGEgdGVzdCBjYXNlIGZvciB0aGlzLCBidXQgSSB0aGluayBpdCB3b3Jrcz8KPiBUaGF0
IGJlaW5nIHNhaWQsIEkgaGF2ZW7igJl0IGJlZW4gdHJ5aW5nIHRoZSB4ZnN0ZXN0cywganVzdCBm
c3ggYW5kIGJlbmNoLgo+IAo+PiBJJ20gc3VyZSB0aGVyZSdzIGFuIHhmc19pbyBjb21tYW5kIGFu
ZCB4ZnN0ZXN0IGZvciB0aGF0LCBidXQgZm9yIG5vdzoKPj4gcHl0aG9uMyAtYyAnaW1wb3J0IG9z
OyBmID0gb3Mub3BlbigidGVzdGZpbGUiLCBvcy5PX0NSRUFUICsgb3MuT19SRFdSLCAwbzQwMCk7
IG9zLndyaXRlKGYsIGIib2tcbiIpJwo+PiAKPj4gaWlyYyBnYW5lc2hhIHJ1bm5pbmcgYXMgbm9u
LXJvb3QganVzdCBpZ25vcmVzIHJvb3QgcmVxdWVzdHMgYW5kIG9wZW5zIGFzCj4+IGN1cnJlbnQg
dXNlci0tIHRoaXMgd29uJ3Qgd29yayBmb3IgdGhpcyBwYXJ0aWN1bGFyIGNhc2UsIGJ1dCBtaWdo
dCBiZQo+PiBnb29kIGVub3VnaCBmb3IgeW91Li4uIFdpdGggdGhhdCBzYWlkOgo+IAo+IFllYWgs
IHRoZSByZWFsIHByb2JsZW0gSSByYW4gaW50byB0aGlzIHdhcyBpZiB0aGUgc2VydmVyIGlzIHJ1
bm5pbmcgYXMgbm9uLXJvb3QgdGhpcyBjYXVzZXMgaXNzdWVzIGFuZCBJIHdhcyB0ZXN0aW5nIGFn
YWluc3QgY3B1ICh3aGljaCBkb2VzbuKAmXQgcnVuIGFzIHJvb3QpLiAgSSBuZWVkIHRvIGdvIGJh
Y2sgYW5kIGNoZWNrLCBidXQgaWYgeW91IGFyZSBydW5uaW5nIGFzIHJvb3QgYW5kIGRmdHVpZD0w
IHRoZW4gdGhlIGJlaGF2aW9yIHNob3VsZCBiZSB0aGUgc2FtZSBhcyBiZWZvcmU/Cj4gSW4gYW55
IGNhc2UsIEnigJlsbCB0cnkgdG8gZ28gYmFjayBhbmQgbWFrZSB0aGlzIHdvcmsg4oCUIG15IGJp
ZyBpc3N1ZSB3YXMgYWx3YXlzIHVzaW5nIHVpZCAwIHJlZ2FyZGxlc3Mgb2Ygd2hhdCBtb3VudCBv
cHRpb25zIHNhaWQgaXMgV29uZy4KPiAKPj4gCj4+PiBUaGVyZSBpcyBhIGRlZXBlciB1bmRlcmx5
aW5nIHByb2JsZW0gd2l0aCB3cml0ZWJhY2tfZmlkcyBpbiB0aGF0Cj4+PiB0aGlzIGZhbGxiYWNr
IGlzIHRvbyBzdGFuZGFyZCBhbmQgbm90IGFuIGV4Y2VwdGlvbiBkdWUgdG8gdGhlIHdheQo+Pj4g
d3JpdGViYWNrIG1vZGUgd29ya3MgaW4gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24uICBTdWJz
ZXF1ZW50Cj4+PiBwYXRjaGVzIHdpbGwgdHJ5IHRvIGFzc29jaWF0ZSB3cml0ZWJhY2sgZmlkcyBm
cm9tIHRoZSBvcmlnaW5hbCB1c2VyCj4+PiBlaXRoZXIgYnkgZmx1c2hpbmcgb24gY2xvc2Ugb3Ig
YnkgaG9sZGluZyBvbnRvIGZpZCB1bnRpbCB3cml0ZWJhY2sKPj4+IGNvbXBsZXRlcy4KPj4gCj4+
IElmIHdlIGNhbiBhZGRyZXNzIHRoaXMgcHJvYmxlbSB0aG91Z2ggSSBhZ3JlZSB3ZSBzaG91bGQg
c3RvcCB1c2luZwo+PiB3cmllYmFjayBmaWRzIGFzIG11Y2ggYXMgd2UgZG8uCj4+IE5vdyBmaWRz
IGFyZSByZWZjb3VudGVkLCBJIHRoaW5rIHdlIGNvdWxkIGp1c3QgdXNlIHRoZSBub3JtYWwgZmlk
IGFzCj4+IHdyaXRlYmFjayBmaWQgKGdldHRpbmcgYSByZWYpLCBhbmQgdGhlIHJlZ3VsYXIgY2xv
c2Ugd2lsbCBub3QgY2x1bmsgaXQKPj4gc28gZGVsYXllZCBJT3Mgd2lsbCBwYXNzLgo+PiAKPj4g
V29ydGggYSB0cnk/Cj4gCj4gWWVhaCwgdGhhdCAodXNpbmcgcmVndWxhciBmaWRzKSBpcyBleGFj
dGx5IHdoYXQgSSBhbSBkb2luZyBpbiBteSB3cml0ZSBiYWNrLWZpeCBwYXRjaCB3aGljaCBpc27i
gJl0IHBhcnQgb2YgdGhpcyBzZXJpZXMuICBJIHdhcyBzdGlsbCBodW50aW5nIGEgZmV3IGJ1Z3Ms
IGJ1dCBJIHRoaW5rIEkgbmFpbGVkIHRoZW0gdG9kYXkuICBJIGhhdmUgdG8gZG8gYSBtb3JlIGV4
dGVuc2l2ZSB0ZXN0IHN3ZWVwIG9mIHRoZSBkaWZmZXJlbnQgY29uZmlncywgYnV0IHVuaXQgdGVz
dHMgc2VlbSBnb29kIHRvIGdvIG5vdyBzbyBpZiBJIGVuZCB1cCByZXdvcmtpbmcgdGhlIHBhdGNo
IHNldCB0byBhZGRyZXNzIHlvdXIgY29tbWVudCBhYm92ZSwgSSBtYXkganVzdCBnbyBhaGVhZCBh
bmQgYWRkIGl0IHRvIHRoZSByZXN1Ym1pdCBzZXQuICBIb3dldmVyLCBJIGFsc28gZ28gYWhlYWQg
YW5kIGZsdXNoIG9uIGNsb3NlL2NsdW5rIOKAlCBhbmQgdGhhdCBnZXRzIHJpZCBvZiB0aGUgZGVs
YXllZCB3cml0ZSBiYWNrIHdoaWNoIEkgdGhpbmsgaXMgYWN0dWFsbHkgcHJlZmVyYWJsZSBhbnl3
YXlzLiAgSSBtYXkgcmUtaW50cm9kdWNlIGl0IHdpdGggdGVtcG9yYWwgY2FjaGluZywgYnV0IGl0
cyBqdXN0IHNvIHByb2JsZW1hdGlj4oCmLi4KPiAKPiAgICAgICAgIC1FcmljCj4gCj4gCj4gCj4g
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBWOWZz
LWRldmVsb3BlciBtYWlsaW5nIGxpc3QKPiBWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQgPG1haWx0bzpWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+Cj4gaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==
