Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1FD1CA6DE
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 May 2020 11:15:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jWz62-00084U-UI; Fri, 08 May 2020 09:15:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lego12239@yandex.ru>) id 1jWz60-00084M-FG
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 09:15:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CAzVePxzFViNHB2MoZh61NB3MXPnYDgguEjuHXhQAVk=; b=Ur842yNCffa6K7n84bjdQfTz4k
 GOaRTk1raV74wDcW353O3DlYGnR+Eopn2gu+tQ2FFKIPmMfKfbdRonMPh81YT4Ik8c1Y0sZGxkQaw
 eJhDPAkDEYgR8KAM5/tPKzHFcPsnzYMRh9iA7uODnJUzF54Hs/GyH+g2J3jyk5eDCayg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CAzVePxzFViNHB2MoZh61NB3MXPnYDgguEjuHXhQAVk=; b=cPhkOxt8uULz9SF76hir0S51Rt
 ZQMZG3VF6k2GMBzjzpRs4u1y+jyiaU0fA3DgF5jl/zdJEH2XBNrw74d44IsREks42PdvNmagplLat
 ++H2w/zi5qNhgZucVygFM6rxoNRWQRRfaohf6iqh7L/Ciy/vS3DGZfP7O0RhB3zMKJXw=;
Received: from forward102j.mail.yandex.net ([5.45.198.243])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jWz5v-001XJz-MN
 for v9fs-developer@lists.sourceforge.net; Fri, 08 May 2020 09:15:04 +0000
Received: from mxback18o.mail.yandex.net (mxback18o.mail.yandex.net
 [IPv6:2a02:6b8:0:1a2d::69])
 by forward102j.mail.yandex.net (Yandex) with ESMTP id 0037EF210E2;
 Fri,  8 May 2020 12:14:43 +0300 (MSK)
Received: from myt5-95c1fb78270f.qloud-c.yandex.net
 (myt5-95c1fb78270f.qloud-c.yandex.net [2a02:6b8:c12:1725:0:640:95c1:fb78])
 by mxback18o.mail.yandex.net (mxback/Yandex) with ESMTP id aeYQxjHFhC-EgvWCSxm;
 Fri, 08 May 2020 12:14:42 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1588929282; bh=CAzVePxzFViNHB2MoZh61NB3MXPnYDgguEjuHXhQAVk=;
 h=In-Reply-To:Reply-To:Subject:Cc:To:From:References:Date:
 Message-ID;
 b=rqQLKlJvxukZWXKOuISg+/UcmamVuyLM103IwAXPWc2MYDuRIjVi5g2ag3Hfrkyrz
 ZnC8fSsLUCYMoVBROCW0nuZLr/xUJo7DFpgas+bctE4mws9SuNEMCZDYORT0qLh/rH
 TGJDk7BkpK8DchRO1uVG2TVbuJp07q1CW39vObSY=
Authentication-Results: mxback18o.mail.yandex.net;
 dkim=pass header.i=@yandex.ru
Received: by myt5-95c1fb78270f.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id D32MauvLtO-Eg2CILiB; Fri, 08 May 2020 12:14:42 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
Date: Fri, 8 May 2020 12:15:58 +0300
From: Oleg <lego12239@yandex.ru>
To: Eric Van Hensbergen <ericvh@gmail.com>
Message-ID: <20200508091558.GB29480@legohost>
References: <20200507102339.GA7332@legohost>
 <CAFkjPTmot_1Sf6h3yfWXhon8EUWgyOFTUy-C2P9OOp8NF6d-BQ@mail.gmail.com>
 <20200507181856.GA32655@legohost>
 <CAFkjPTk7MtoabMVXXGSR+ih3n0BbtUQi1dCDNDvQRBQxo3M0yg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFkjPTk7MtoabMVXXGSR+ih3n0BbtUQi1dCDNDvQRBQxo3M0yg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lego12239[at]yandex.ru)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [5.45.198.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (lego12239[at]yandex.ru)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (lego12239[at]yandex.ru)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jWz5v-001XJz-MN
Subject: Re: [V9fs-developer] linux 9p mount & tattach
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
Reply-To: Oleg <lego12239@yandex.ru>
Cc: V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gVGh1LCBNYXkgMDcsIDIwMjAgYXQgMDM6NTc6MTZQTSAtMDUwMCwgRXJpYyBWYW4gSGVuc2Jl
cmdlbiB3cm90ZToKPiBhaCwgc29ycnksIENPTkZJR19ORVRfOVBfREVCVUcgcHJvYmFibHkgbmVl
ZHMgdG8gYmUgdHVybmVkIG9uIGluIHlvdXIKPiBrZXJuZWwgZm9yIHlvdSB0byBzZWUgdGhlIG91
dHB1dCBmcm9tIHRob3NlIHRoaW5ncyBmcm9tIHRoZSA5cCBzaWRlLgoKOi0pIEkgdGhvdWdodCBh
Ym91dCBzb21ldGhpbmcgbGlrZSB0aGlzLCBidXQgaSBzZWFyY2ggREVCVUcgaW4KRmlsZSBzeXN0
ZW1zIC0+IE5ldHdvcmsgZmlsZSBzeXN0ZW1zLCB3aGlsZSBpdCByZXNpZGVzIGluCk5ldHdvcmtp
bmcgc3VwcG9ydCAtPiBQbGFuIDkgUmVzb3VyY2UgU2hhcmluZyBTdXBwb3J0ICg5UDIwMDApLgoK
PiBMb29raW5nIGF0IHRoZSBjb2RlLCB0aGVyZSBhcmUgc29tZSBhdXRvLWZhbGwtYmFja3MgZGVw
ZW5kaW5nIG9uIHRoZSBtb2RlLgo+IEl0IGxvb2tzIGxpa2UgdW5sZXNzIHlvdSBhcmUgdXNpbmcg
LnUgb3IgLmwgeW91IGNhbid0IHVzZSBhY2Nlc3M9dXNlci4KClllcy4gSSd2ZSBmb3VuZCB0aGlz
IGNvZGUgbm93IDotKS4gVGhhbmtzLgoKPiBJIGJlbGlldmUgdGhlIHJlYXNvbiBpcyB0aGF0IHdp
dGhvdXQgdGhlIGV4dGVuc2lvbnMsIHRoZXJlIGFyZW4ndCBnb29kIHdheXMKPiBvZiBtYXBwaW5n
IHRoZSB1aWQvZ2lkIGNvbmNlcHRzIG9mIGxpbnV4IHRvIHRoZSB1bmFtZSBjb25jZXB0cyBvZiBQ
bGFuIDkuCj4gTW9zdCB0aW1lcyB3aGVuIHBlb3BsZSBhcmUgYWNjZXNzaW5nIDlwIG5hdGl2ZSBm
aWxlIHN5c3RlbXMgZnJvbSBMaW51eCwKPiB0aGV5IHNwZWNpZnkgdW5hbWU9JFVTRVIgb24gbW91
bnQuICBCdXQgSSB0aGluayBxdWlja2VzdCBzb2x1dGlvbiB3b3VsZCBiZQo+IHRvIGV4dGVuZCB5
b3VyIHN5bnRoZXRpYyBmaWxlIHN5c3RlbSB0byBiZSBhYmxlIHRvIHVzZSA5cC51IG9yIDlwLkwK
CkkganVzdCBhIHVzZXIgb2YgbGliaXhwIGFuZCBkb24ndCBrbm93IGl0IGludGVybmFscyBzbyBn
b29kIHRoYXQgaSBjYW4gYWRkCjlwLnUgc3VwcG9ydCB0byBpdC4gQmVjYXVzZSwgdGhpcyBpc24n
dCBhIHF1aWNrZXN0IHNvbHV0aW9uIGZvciBtZSA6LSkuCklmIHRoZXJlIGlzIG5vIG90aGVyIHdh
eSwgdGhlbiBpIGhhdmUgbm8gY2hvaWNlLiBCdXQgbWF5IGJlIHdlIGNhbiBkbwpqdXN0IHNpbXBs
ZSBtYXBwaW5nIG9mIHVpZC9naWQgdG8vZnJvbSBpdCBzdHJpbmcgcmVwcmVzZW50YXRpb24/CkUu
Zy4gOXAgcmVwbHkgYSBzdGF0IHdpdGggdWlkICIwIiBhbmQga2VybmVsIHRyYW5zZm9ybSBpdCB0
byB1aWQgMC4KVGhpcyBzaG91bGQgYmUgc2ltcGxlIGFuZCBnaXZlIHVzIHdvcmthYmxlIG1ldGhv
ZCB0byB0cmFuc21pdCB0byBrZXJuZWwKb3duZXIgaW5mby4gVGhpcyBtYXkgYmUgaXNuJ3QgdmVy
eSB3ZWxsKGZyb20gYSBwZW5kYW50IHBvaW50IG9mIHZpZXcpLCBidXQKdGhpcyBiZXR0ZXIgdGhh
biBub3RoaW5nKGZyb20gYSBwcmFjdGljZSBwb2ludCBvZiB2aWV3KSA6LSkuIEFuZCB2ZXJ5IHVz
ZWZ1bApmb3IgOXAgZnMgd2hpY2ggaXMgd3JpdHRlbiBmb3IgbGludXggYW5kIHdpbGxuJ3QgYmUg
cnVuIG9uIHBsYW45LgpNYXkgYmUgdGhpcyBmZWF0dXJlIGNvdWxkIGJlIHR1cm5lZCB3aXRoIHNv
bWUgb3B0aW9uLgpJZiA5cCBmaWxlIHNlcnZlciBuZWVkcyB1c2VyL2dyb3VwIG5hbWVzLCB0aGVu
KGlmIGl0IGxvY2FsIHRvIG1hY2hpbmUKd2hlcmUgbW91bnQgY2FsbCBpcyBpc3N1ZWQpIGl0IGNh
biBieSBpdHNlbGYgY29uc3VsdHMgdGhlIC9ldGMvcGFzc3dkIGFuZAovZXRjL2dyb3VwLgoKSSB3
cm90ZSBmdXNlIGZzIGFuZCBhZnRlciBpJ3ZlIG1hZGUgOXAgZnMgaSBkb24ndCB3YW50IGJhY2sg
dG8gZnVzZSA6LSguCklmIGtlcm5lbCBhbGxvdyB0byBkbyA5cCBtb3VudC91bW91bnQgd2l0aG91
dCByb290IHJpZ2h0cyhsaWtlIHBsYW45KSwgdGhlbgppdCB3b3VsZCBiZSBhIGNvbXBsZXRlIGhh
cHBpbmVzcyA6LSkuCgo+IFdoZW4geW91IHR5cGUgbW91bnQgd2hhdCBzb3J0IG9mIG9wdGlvbnMg
ZG8geW91IHNlZSBmcm9tIHRoZSA5cCBtb3VudAo+IHBvaW50PyAgV2hlbiBJIHRyeSB3aXRoIHlv
dXIgY29tbWFuZCBsaW5lIEkgc2VlIGFjY2Vzcz1hbnkuCgpJIGNvbmZpcm0uIE5vdyBpIHNlZSB0
aGF0IGluIC9wcm9jL21vdW50cyBhY2Nlc3M9YW55IDotKC4gREVCVUcgaW4KZG1lc2cgc2hvdyBz
aW5nbGUgVEFUVEFDSCBvbiBtb3VudCBjYWxsOgoKWyA1OTQyLjY2NTk1Nl0gOXBuZXQ6ICgwMDAx
ODM0MikgPj4+IFRBVFRBQ0ggYWZpZCAtMSB1bmFtZSBub2JvZHkgYW5hbWUgClsgNTk0Mi42NjU5
NjFdIDlwbmV0OiAoMDAwMTgzNDIpID4+PiBzaXplPTI1IHR5cGU6IDEwNCB0YWc6IDEKWyA1OTQy
LjY2NjAzMV0gOXBuZXQ6ICgwMDAxOTExMykgPDw8IHNpemU9MjAgdHlwZTogMTA1IHRhZzogMQpb
IDU5NDIuNjY2MDQwXSA5cG5ldDogKDAwMDE4MzQyKSA8PDwgc2l6ZT0yMCB0eXBlOiAxMDUgdGFn
OiAxClsgNTk0Mi42NjYwNDNdIDlwbmV0OiAoMDAwMTgzNDIpIDw8PCBSQVRUQUNIIHFpZCA4MC41
NjJjMzcwNDE5OTAuMApbIDU5NDIuNjY2MTE1XSA5cG5ldDogLS0gdjlmc19nZXRfaW5vZGUgKDE4
MzQyKTogc3VwZXIgYmxvY2s6IGZmZmY5MDAzYzdhODU4MDAgbW9kZTogNDE3NzcKWyA1OTQyLjY2
NjEyM10gOXBuZXQ6ICgwMDAxODM0MikgPj4+IFRTVEFUIGZpZCAwClsgNTk0Mi42NjYxMjZdIDlw
bmV0OiAoMDAwMTgzNDIpID4+PiBzaXplPTExIHR5cGU6IDEyNCB0YWc6IDEKWyA1OTQyLjY2NjE5
OV0gOXBuZXQ6ICgwMDAyMjM4NSkgPDw8IHNpemU9NjIgdHlwZTogMTI1IHRhZzogMQpbIDU5NDIu
NjY2MjEwXSA5cG5ldDogKDAwMDE4MzQyKSA8PDwgc2l6ZT02MiB0eXBlOiAxMjUgdGFnOiAxClsg
NTk0Mi42NjYyMTddIDlwbmV0OiAoMDAwMTgzNDIpIDw8PCBSU1RBVCBzej0zMyB0eXBlPTAgZGV2
PTAgcWlkPTgwLjU2MmMzNzA0MTk5MC4wCiAgICAgICAgICAgICAgIDw8PCAgICBtb2RlPTgwMDAw
MWZmIGF0aW1lPTAwMDAwMDAwIG10aW1lPTAwMDAwMDAwIGxlbmd0aD0wCiAgICAgICAgICAgICAg
IDw8PCAgICBuYW1lPS8gdWlkPTEgZ2lkPTEgbXVpZD0wIGV4dGVuc2lvbj0oKG51bGwpKQogICAg
ICAgICAgICAgICA8PDwgICAgdWlkPS0xIGdpZD0tMSBuX211aWQ9LTEKWyA1OTQyLjY2NjIyMF0g
OXBuZXQ6IC0tIHY5ZnNfbW91bnQgKDE4MzQyKTogIHNpbXBsZSBzZXQgbW91bnQsIHJldHVybiAw
CgoKPiBUaGUgYXV0byBmYWxsYmFjayB3aXRoIG5vIHdhcm5pbmcgKGFkbWl0dGVkbHkgdGhlIHdh
cm5pbmcgd291bGQgYmUgaW4KPiBrZXJuZWwgbG9ncywgbm90IG9uIG1vdW50KSBpcyBhIGJpdCB1
bmZvcnR1bmF0ZSAtLSBidXQgYXQgdGhlIG1vbWVudCBJCj4gZG9uJ3QgdGhpbmsgd2UgZXZlbiBw
dXQgaXQgaW4gdGhlIGxvZ3MgaWYgdGhlIGZhbGxiYWNrIGlzIHVzZWQuCj4gCj4gVGhlIGRvY3Vt
ZW50YXRpb24gc2hvdWxkIHByb2JhYmx5IGFsc28gYmUgdXBkYXRlZCB0byBub3RlIHRoZSBmYWxs
YmFja3MKPiAoYWNjZXNzPWNsaWVudCB3aWxsIGZhbGwgYmFjayB0byBhY2Nlc3MgdXNlciBpZiBu
b3QgdXNpbmcgOXAubCBhcyB3ZWxsLgoKWWVwLiBUaGUgZG9jdW1lbnRhdGlvbiBpcyBhIGJpdCBt
aXNsZWFkaW5nLgoKPiBJZiBpdCBtYWtlcyB5b3UgZmVlbCBhbnkgYmV0dGVyLCB0aGVyZSBoYXMg
YmVlbiBhIEZJWE1FIHRoZXJlIHByb2JhYmx5Cj4gc2luY2Ugd2Ugd3JvdGUgaXQgLS1idXQgSSdt
IG5vdCBzdXJlIHdlIGV2ZXIgY2FtZSB1cCB3aXRoIGEgd29ya2FibGUKPiBzb2x1dGlvbiBzaW5j
ZSB0cmFuc2xhdGluZyBmcm9tIHVpZCB0byB1bmFtZSBpbiBrZXJuZWwgaXMgYSBQSVRBIChmcm9t
Cj4gZnMvOXAvdjlmcy5jKToKPiAKPiAgICAgICBpZiAoIXY5ZnNfcHJvdG9fZG90bCh2OXNlcykg
JiYKPiAgICAgICAgICAgICAoKHY5c2VzLT5mbGFncyAmIFY5RlNfQUNDRVNTX01BU0spID09IFY5
RlNfQUNDRVNTX0NMSUVOVCkpIHsKPiAgICAgICAgICAgICAgICAgLyoKPiAgICAgICAgICAgICAg
ICAgICogV2Ugc3VwcG9ydCBBQ0NFU1NfQ0xJRU5UIG9ubHkgZm9yIGRvdGwuCj4gICAgICAgICAg
ICAgICAgICAqIEZhbGwgYmFjayB0byBBQ0NFU1NfVVNFUgo+ICAgICAgICAgICAgICAgICAgKi8K
PiAgICAgICAgICAgICAgICAgdjlzZXMtPmZsYWdzICY9IH5WOUZTX0FDQ0VTU19NQVNLOwo+ICAg
ICAgICAgICAgICAgICB2OXNlcy0+ZmxhZ3MgfD0gVjlGU19BQ0NFU1NfVVNFUjsKPiAgICAgICAg
IH0KPiAgICAgICAgIC8qRklYTUUgISEgKi8KPiAgICAgICAgIC8qIGZvciBsZWdhY3kgbW9kZSwg
ZmFsbCBiYWNrIHRvIFY5RlNfQUNDRVNTX0FOWSAqLwo+ICAgICAgICAgaWYgKCEodjlmc19wcm90
b19kb3R1KHY5c2VzKSB8fCB2OWZzX3Byb3RvX2RvdGwodjlzZXMpKSAmJgo+ICAgICAgICAgICAg
ICAgICAoKHY5c2VzLT5mbGFncyZWOUZTX0FDQ0VTU19NQVNLKSA9PSBWOUZTX0FDQ0VTU19VU0VS
KSkgewo+IAo+ICAgICAgICAgICAgICAgICB2OXNlcy0+ZmxhZ3MgJj0gflY5RlNfQUNDRVNTX01B
U0s7Cj4gICAgICAgICAgICAgICAgIHY5c2VzLT5mbGFncyB8PSBWOUZTX0FDQ0VTU19BTlk7Cj4g
ICAgICAgICAgICAgICAgIHY5c2VzLT51aWQgPSBJTlZBTElEX1VJRDsKPiAgICAgICAgIH0KPiAg
ICAgICAgIGlmICghdjlmc19wcm90b19kb3RsKHY5c2VzKSB8fAo+ICAgICAgICAgICAgICAgICAh
KCh2OXNlcy0+ZmxhZ3MgJiBWOUZTX0FDQ0VTU19NQVNLKSA9PSBWOUZTX0FDQ0VTU19DTElFTlQp
KQo+IHsKPiAgICAgICAgICAgICAgICAgLyoKPiAgICAgICAgICAgICAgICAgICogV2Ugc3VwcG9y
dCBBQ0wgY2hlY2tzIG9uIGNsaW5ldCBvbmx5IGlmIHRoZSBwcm90b2NvbCBpcwo+ICAgICAgICAg
ICAgICAgICAgKiA5UDIwMDAuTCBhbmQgYWNjZXNzIGlzIFY5RlNfQUNDRVNTX0NMSUVOVC4KPiAg
ICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgIHY5c2VzLT5mbGFncyAmPSB+VjlG
U19BQ0xfTUFTSzsKPiAgICAgICAgIH0KClRoZSBzYW1lIC0gd2UgY2FuIGp1c3QgdXNlICJzdHVw
aWQgbWFwIiBtb2RlLiBUcmFuc21pdCB1aWQvZ2lkIGluIHRleHR1YWwKcmVwcmVzZW50YXRpb24u
IFRoaXMgd2lsbCBiZSB2ZXJ5IHdlbGwgYW5kIGVub3VnaCBmb3IgbGludXggOXAgZnMuCgotLSAK
0J7Qu9C10LMg0J3QtdC80LDQvdC+0LIgKE9sZWcgTmVtYW5vdikKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxp
c3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291
cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
