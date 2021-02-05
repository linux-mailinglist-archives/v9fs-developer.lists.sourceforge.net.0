Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C76310E45
	for <lists+v9fs-developer@lfdr.de>; Fri,  5 Feb 2021 18:02:57 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l84VQ-0003EY-K8; Fri, 05 Feb 2021 17:02:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1l84VO-0003EM-IH
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 17:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2q18CzBcxJvAu8Vj/9Xv+8eYOiYLfIpMMBqp/lRA8Jc=; b=Eng2MNq3wLHEYrXsBoADq2qwLh
 dQmBxIab1v0sGVMlf7QVM8jIuMliTTpmieL2edIQIz9Huc211Kf0z2zlDHzZ2bi9WUoj1GqrAycG2
 BjyP0IIqTR+JKNv4Q3P/hvYgisvBP31nTw3Pth+x+syLorAmmDJvPbkF/GfyNdqOF/yM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:
 Subject:cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2q18CzBcxJvAu8Vj/9Xv+8eYOiYLfIpMMBqp/lRA8Jc=; b=P
 LGqU/X/OEUrZNEZfbQIvAJVeEFxq7sAHhaCW8rMwdREKmsJdaEFxv+cjwzbfKKTDGgfYhWuKuDUKL
 kyQCZKCDwg4+mQj+0UBI8eH3EH82lT6jIq9O04tTYNTKubXShteGT7C8xaVXlkElCNvuIs5f+VF8R
 Q1moa8O2pYvlbh9w=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1l84VB-0000Hc-75
 for v9fs-developer@lists.sourceforge.net; Fri, 05 Feb 2021 17:02:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1612544551;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2q18CzBcxJvAu8Vj/9Xv+8eYOiYLfIpMMBqp/lRA8Jc=;
 b=U72yp1HgA9Cwsen4QvMB9seFW1rnkekQDuVz1X4t7m80hOvQ79/4oeStIDub+EbCGn/b/v
 73Gyur8BCA7x3lGaJq6aL49VIx2wxhar09Oy+ckSUWVRALQsEJ08b9KKKwDO3v3vQvYgMz
 DupvEzFMgYiD9fJYiUwiXdDMhWrUBWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-511-Ui2ao1J7MTWjBnKX2-SeOQ-1; Fri, 05 Feb 2021 12:02:24 -0500
X-MC-Unique: Ui2ao1J7MTWjBnKX2-SeOQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD1AE100A625;
 Fri,  5 Feb 2021 17:02:21 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-115-23.rdu2.redhat.com
 [10.10.115.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1D00E1A353;
 Fri,  5 Feb 2021 17:02:14 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: torvalds@linux-foundation.org
MIME-Version: 1.0
Date: Fri, 05 Feb 2021 17:02:14 +0000
Message-ID: <2522190.1612544534@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1l84VB-0000Hc-75
Subject: [V9fs-developer] Upcoming for next merge window: fscache and netfs
 lib
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkhpIExpbnVzLAoKVG8gYXBwcmlzZSB5b3UgaW4gYWR2YW5jZSwgSSdtIGludGVuZGluZyB0byBz
dWJtaXQgYSBwdWxsIHJlcXVlc3QgZm9yIGEKcGFydGlhbCBtb2Rlcm5pc2F0aW9uIG9mIHRoZSBm
c2NhY2hlIEkvTyBzdWJzeXN0ZW0sIHdoaWNoIGNhbiBiZSBmb3VuZCBoZXJlOgoKCWh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2Rob3dlbGxzL2xpbnV4LWZz
LmdpdC9sb2cvP2g9ZnNjYWNoZS1uZXh0CgpUaGUgbWFpbiBwYXJ0cyBvZiBpdCBhcmU6CgogKDEp
IEluc3RpdHV0ZSBhIGhlbHBlciBsaWJyYXJ5IGZvciBuZXR3b3JrIGZpbGVzeXN0ZW1zLiAgVGhl
IGZpcnN0IHN0YWdlIG9mCiAgICAgdGhpcyBoYW5kbGVzIC0+cmVhZHBhZ2UoKSwgLT5yZWFkYWhl
YWQoKSBhbmQgcGFydCBvZiAtPndyaXRlX2JlZ2luKCkgb24KICAgICBiZWhhbGYgb2YgdGhlIG5l
dGZzLCByZXF1aXJpbmcgdGhlIG5ldGZzIHRvIHByb3ZpZGUgYSB2ZWN0b3IgdG8gcGVyZm9ybSBh
CiAgICAgcmVhZCB0byBzb21lIHBhcnQgb2YgYW4gaW5vZGUuCgogICAgIFRoaXMgYWxsb3dzIGhh
bmRsaW5nIG9mIHRoZSBmb2xsb3dpbmcgdG8gYmUgKGF0IGxlYXN0IHBhcnRpYWxseSkgbW92ZWQK
ICAgICBvdXQgb2YgYWxsIHRoZSBuZXR3b3JrIGZpbGVzeXN0ZW1zIGFuZCBjb25zb2xpZGF0ZWQg
aW4gb25lIHBsYWNlOgoKCS0gY2hhbmdlcyBpbiBWTSB2ZWN0b3JzIChNYXR0aGV3IFdpbGNveCdz
IEdyYW5kIFBsYW5z4oSiOy0pCgkgIC0gdHJhbnNwYXJlbnQgaHVnZSBwYWdlIHN1cHBvcnQKCS0g
c2hhcGluZyBvZiByZWFkcwoJICAtIHJlYWRhaGVhZCBleHBhbnNpb24KCSAgLSBmcyBhbGlnbm1l
bnQvZ3JhbnVsYXJpdHkgKGNlcGgsIHBuZnMpCgkgIC0gY2FjaGUgYWxpZ25tZW50L2dyYW51bGFy
aXR5CgktIHNsaWNpbmcgb2YgcmVhZHMKCSAgLSByc2l6ZQoJICAtIGtlZXBpbmcgbXVsdGlwbGUg
cmVhZCBpbiBmbGlnaHQJfSBTdGV2ZSBGcmVuY2ggd291bGQgbGlrZQoJICAtIG11bHRpY2hhbm5l
bCBkaXN0cmlidXRpb24JCX0gYnV0IGZvciB0aGUgZnV0dXJlCgkgIC0gbXVsdGlzZXJ2ZXIgZGlz
dHJpYnV0aW9uIChjZXBoLCBwbmZzKQoJICAtIHN0aXRjaGluZyB0b2dldGhlciByZWFkcyBmcm9t
IHRoZSBjYWNoZSBhbmQgcmVhZHMgZnJvbSB0aGUgbmV0d29yawoJLSBzYXZpbmcgZGF0YSByZWFk
IGZyb20gdGhlIHNlcnZlciBpbnRvIHRoZSBjYWNoZQoJLSByZXRyeS9yZWlzc3VlIGhhbmRsaW5n
CgkgIC0gZmFsbGJhY2sgYWZ0ZXIgY2FjaGUgZmFpbHVyZQogICAgIAktIHNob3J0IHJlYWRzCgkt
IGZzY3J5cHQgZGF0YSBkZWNyeXB0aW9uIChKZWZmIExheXRvbiBpcyBjb25zaWRlcmluZyBmb3Ig
dGhlIGZ1dHVyZSkKCiAoMikgQWRkIGFuIGFsdGVybmF0ZSBjYWNoZSBJL08gQVBJIGZvciB1c2Ug
d2l0aCB0aGUgbmV0ZnMgbGliIHRoYXQgbWFrZXMgdXNlCiAgICAgb2Yga2lvY2JzIGluIHRoZSBj
YWNoZSB0byBkbyBkaXJlY3QgSS9PIGJldHdlZW4gdGhlIGNhY2hlIGZpbGVzIGFuZCB0aGUKICAg
ICBuZXRmcyBwYWdlcy4KCiAgICAgVGhpcyBpcyBpbnRlbmRlZCB0byByZXBsYWNlIHRoZSBjdXJy
ZW50IEkvTyBBUEkgdGhhdCBjYWxscyB0aGUgYmFja2luZyBmcwogICAgIHJlYWRwYWdlIG9wIGFu
ZCB0aGFuIHNub29waW5nIHRoZSB3YWl0IHF1ZXVlcyBmb3IgY29tcGxldGlvbiB0byByZWFkIGFu
ZAogICAgIHVzaW5nIHZmc193cml0ZSgpIHRvIHdyaXRlLiAgSXQgd2Fzbid0IHBvc3NpYmxlIHRv
IGRvIGluLWtlcm5lbCBESU8gd2hlbgogICAgIEkgZmlyc3Qgd3JvdGUgY2FjaGVmaWxlcyAtIGFu
ZCB0aGlzIG1ha2VzIGl0IGEgbG90IHNpbXBsZXIgYW5kIG1vcmUKICAgICByb2J1c3QgKGFuZCB1
c2VzIGEgbG90IGxlc3MgbWVtb3J5KS4KCiAoMykgQWRkIGFuIElURVJfWEFSUkFZIGlvdl9pdGVy
IHRoYXQgYWxsb3dzIEkvTyBpdGVyYXRpb24gdG8gYmUgZG9uZSBvbiBhbgogICAgIHhhcnJheSBv
ZiBwaW5uZWQgcGFnZXMgKHN1Y2ggYXMgaW5vZGUtPmlfbWFwcGluZy0+aV9wYWdlcyksIHRoZXJl
YnkKICAgICBhdm9pZGluZyB0aGUgbmVlZCB0byBhbGxvY2F0ZSBhIGJ2ZWMgYXJyYXkgdG8gcmVw
cmVzZW50IHRoaXMuCgogICAgIFRoaXMgaXMgdXNlZCB0byBwcmVzZW50IGEgc2V0IG9mIG5ldGZz
IHBhZ2VzIHRvIHRoZSBjYWNoZSB0byBkbyBESU8gb24KICAgICBhbmQgaXMgYWxzbyB1c2VkIGJ5
IGFmcyB0byBwcmVzZW50IG5ldGZzIHBhZ2VzIHRvIHNlbmRtc2cuICBJdCBjb3VsZCBhbHNvCiAg
ICAgYmUgdXNlZCBieSB1bmVuY3J5cHRlZCBjaWZzIHRvIHBhc3MgdGhlIHBhZ2VzIHRvIHRoZSBU
Q1Agc29ja2V0IGl0IHVzZXMKICAgICAoaWYgaXQncyBkb2luZyBUQ1ApIGFuZCBteSBwYXRjaCBm
b3IgOXAgKHdoaWNoIGlzbid0IGluY2x1ZGVkIGhlcmUpIGNhbgogICAgIG1ha2UgdXNlIG9mIGl0
LgoKICg0KSBNYWtlIGFmcyB1c2UgdGhlIGFib3ZlLiAgSXQgcGFzc2VzIHRoZSBzYW1lIHhmc3Rl
c3RzIChhbmQgaGFzIHRoZSBzYW1lCiAgICAgZmFpbHVyZXMpIGFzIHRoZSB1bnBhdGNoZWQgYWZz
IGNsaWVudC4KCiAoNSkgTWFrZSBjZXBoIHVzZSB0aGUgYWJvdmUgKEkndmUgbWVyZ2VkIGEgYnJh
bmNoIGZyb20gSmVmZiBMYXl0b24gZm9yIHRoaXMpLgogICAgIFRoaXMgYWxzbyBwYXNzZXMgeGZz
dGVzdHMuCgpEYXZlIFd5c29jaGFuc2tpIGhhcyBhIHBhdGNoIHNlcmllcyBmb3IgbmZzLiAgTm9y
bWFsIG5mcyB3b3JrcyBmaW5lIGFuZCBwYXNzZXMKdmFyaW91cyB0ZXN0cywgYnV0IGl0IHR1cm5l
ZCBvdXQgcG5mcyBoYXMgYSBwcm9ibGVtIC0gcG5mcyBkb2VzIHNwbGl0dGluZyBvZgpyZXF1ZXN0
cyBpdHNlbGYgYW5kIHNlbmRpbmcgdGhlbSB0byB2YXJpb3VzIHBsYWNlcywgYnV0IGl0IG5lZWRz
IHRvIGNvb3BlcmF0ZQptb3JlIGNsb3NlbHkgd2l0aCBuZXRmcyBvdmVyIHRoaXMuICBIZSdzIHdv
cmtpbmcgb24gdGhpcy4KCkkndmUgZ2l2ZW4gRG9taW5pcXVlIE1hcnRpbmV0IGEgcGF0Y2ggZm9y
IDlwIGFuZCBTdGV2ZSBGcmVuY2ggYSBwYXJ0aWFsIHBhdGNoCmZvciBjaWZzLCBidXQgbmVpdGhl
ciBvZiB0aG9zZSBpcyBnb2luZyB0byBiZSByZWFkeSB0aGlzIG1lcmdlIHdpbmRvdyBlaXRoZXIu
Cgotfi0KCkFzc3VtaW5nIHlvdSdyZSB3aWxsaW5nIHRvIHRha2UgdGhpcywgc2hvdWxkIEkgc3Vi
bWl0IG9uZSBwdWxsIHJlcXVlc3QgZm9yIHRoZQpjb21iaW5lZCBsb3QsIG9yIHNob3VsZCBJIGJy
ZWFrIGl0IHVwIGludG8gc21hbGxlciByZXF1ZXN0cyAoc2F5IHdpdGggYQpzZXBhcmF0ZSByZXF1
ZXN0IGZyb20gSmVmZiBmb3IgdGhlIGNlcGggc3R1ZmYpLgoKSWYgd2UgY2FuIGdldCB0aGUgbmV0
ZnMgbGliIGluIHRoaXMgbWVyZ2Ugd2luZG93LCB0aGF0IHNpbXBsaWZpZXMgZGVhbGluZyB3aXRo
Cm5mcyBhbmQgY2lmcyBwYXJ0aWN1bGFybHkgYXMgdGhlIGNoYW5nZXMgc3BlY2lmaWMgdG8gdGhv
c2UgY2FuIGdvIHRocm91Z2ggdGhlCm1haW50YWluZXIgdHJlZXMuCgpUaGFua3MsCkRhdmlkCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2
ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQK
aHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9w
ZXIK
