Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D1A56B8B2
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jul 2022 13:41:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o9mMB-0003vW-MF; Fri, 08 Jul 2022 11:41:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1o9mMA-0003vM-37
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 11:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CESzf00bqxk8zPwTMZ8J7GXH4+tR1d5gAM6n61EMPow=; b=gW+97t1ki1ZyDLYSYAsvlndw1L
 Ko4v6ByTx+hXwyUJ3CwDTocOfmr2nZYstlg/ALDPVQpmQgDR1dY8EgLVgU3JVd1dSRu/piLGt47Yy
 5actEokTp0VGkYDO2JocgtB5TR9Hc5bXR+HPiZPaVlKaG8kzM4OgEyjM4cSC39sb1u4E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CESzf00bqxk8zPwTMZ8J7GXH4+tR1d5gAM6n61EMPow=; b=CFrIKTc93kRPBX+SLXn52suWi8
 iyYPnMQo9GvnmsfFWM+GsKiy1dNmyqsqL7wjRVx1sEOcttPlOJ+hwPO1JtuhV6NaDl2uAr9ag2iHd
 chUUpRBqh1VgdTS5DCg9P4tksJzpx3BieNbMcJIxmQ8YB7ZVUuyEMVX+Eax7FpubECMk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9mM4-00AoHN-EH
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jul 2022 11:41:08 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id F0999C01B; Fri,  8 Jul 2022 13:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657280457; bh=CESzf00bqxk8zPwTMZ8J7GXH4+tR1d5gAM6n61EMPow=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=blSbvG8fd7Bp/MkQFXmePHbW6p3YyVK482WO6qkhMCShT6S/8gNWDsi7TYf0rbo28
 dKor5IZKp3Ol7dbn4a6qNWtSZww/5Xk3AtsJmNb+S+taDVbBNxv7U+5vW2CWbNlFJc
 XuOrJhaujpPRB7G9MI7bB+sk27h3KW4p8qMX3KAZGxVCvOZ+3PKyaJchH+HLriLJYp
 jFwgi91FW/zMGLJh1XUEysSd8iMOR+Hzln2BFSi7bjfTcXo/YrUnqjD1Vn9w28YeXa
 6oI/xNnZk6LfiAcypW/J30d5TJiq47T/dIACXVOygScfH4mhuuUYc60n3DNy/JjtqX
 NBvJ2/nO8pyBA==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id CF790C009;
 Fri,  8 Jul 2022 13:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657280456; bh=CESzf00bqxk8zPwTMZ8J7GXH4+tR1d5gAM6n61EMPow=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l2pe+aFn0nIRfP/yrcn4rqTxdifWA3zG6w66vXl0gQu3DYC8un2P/4BBMMmujG/SS
 nJLtcVTxJ+fukYNDxXpY0vcHsq/Os6QKmz11uZHjiTQjiG7H9mD8F3aTbIV+4wmPbv
 7SPaQep3zKLkBAr6gLHdqRCKT5IanYQau1vh4FA9AeHRq0GTCFehUUGYGmHatUIu43
 b4hwTIjwud9ldg+GDOz2REbGpLx8IE/DndZivvjl0h1qSCEB4hqLFKncHg9YQgNubT
 ts1PV0Oy3lOm115uUl5bq8k2yWNIdTlYBuNBlqpf0oq0XiAiS80xpKXa3/0kP8Rh2Z
 n/0Z31pWVcZPQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f9afc261;
 Fri, 8 Jul 2022 11:40:51 +0000 (UTC)
Date: Fri, 8 Jul 2022 20:40:36 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YsgXtBsfLEQ9dFux@codewreck.org>
References: <cover.1640870037.git.linux_oss@crudebyte.com>
 <YseFPgFoLpjOGq40@codewreck.org>
 <CAFkjPTngeFh=0mPVW-Yf1Sxkxp_HDNUeANndoYN3-eU9_rGLuQ@mail.gmail.com>
 <1690835.L3irNgtgWz@silver>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1690835.L3irNgtgWz@silver>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Christian Schoenebeck wrote on Fri, Jul 08, 2022 at 01:18:40PM
    +0200: > On Freitag, 8. Juli 2022 04:26:40 CEST Eric Van Hensbergen wrote:
    > > kvmtool might be the easiest I guess - I’m traveling rig [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
                             lines
X-Headers-End: 1o9mM4-00AoHN-EH
Subject: Re: [V9fs-developer] [PATCH v4 00/12] remove msize limit in virtio
 transport
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
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 v9fs-developer@lists.sourceforge.net, Nikolay Kichukov <nikolay@oldum.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Q2hyaXN0aWFuIFNjaG9lbmViZWNrIHdyb3RlIG9uIEZyaSwgSnVsIDA4LCAyMDIyIGF0IDAxOjE4
OjQwUE0gKzAyMDA6Cj4gT24gRnJlaXRhZywgOC4gSnVsaSAyMDIyIDA0OjI2OjQwIENFU1QgRXJp
YyBWYW4gSGVuc2JlcmdlbiB3cm90ZToKPiA+IGt2bXRvb2wgbWlnaHQgYmUgdGhlIGVhc2llc3Qg
SSBndWVzcyAtIEnigJltIHRyYXZlbGluZyByaWdodCBub3cgYnV0IEkgY2FuCj4gPiB0cnkgYW5k
IGZpbmQgc29tZSBvdGhlcnMuICBUaGUgYXJtIGZhc3QgbW9kZWxzIGhhdmUgZnJlZSB2ZXJzaW9u
cyB0aGF0IGFyZQo+ID4gZG93bmxvYWRhYmxlIGFzIHdlbGwuICBJIGtub3cgSeKAmXZlIHNlZW0g
c29tZSBvdGhlciBsZXNzLXRyYWRpdGlvbmFsIHVzZXMgb2YKPiA+IHZpcnRpbyBwYXJ0aWN1bGFy
bHkgaW4gbGlib3MgZGVwbG95bWVudHMgYnV0IHdpbGwgdGFrZSBzb21lIHRpbWUgdG8gcmF0dGxl
Cj4gPiB0aG9zZSBmcm9tIG15IG1lbW9yeS4KPiAKPiBTb21lIGV4YW1wbGVzIHdvdWxkIGluZGVl
ZCBiZSB1c2VmdWwsIHRoYW5rcyEKCmh0dHBzOi8vZ2l0aHViLmNvbS9rdm10b29sL2t2bXRvb2wg
aW5kZWVkIGhhcyBhIDlwIHNlcnZlciwgSSB0aGluayBJCnVzZWQgdG8gcnVuIGl0IGFnZXMgYWdv
LgpJJ2xsIGdpdmUgaXQgYSBmcmVzaCBzcGluLCB0aGFua3MgZm9yIHRoZSByZW1pbmRlci4KCkZv
ciB0aGlzIG9uZSBpdCBkZWZpbmVzIFZJUlRRVUVVRV9OVU0gdG8gMTI4LCBzbyBub3QgcXVpdGUg
MTAyNC4KCgo+ID4gPiBJIGZvdW5kIGh0dHBzOi8vZ2l0aHViLmNvbS9tb2J5L2h5cGVya2l0IGZv
ciBPU1ggYnV0IHRoYXQgZG9lc24ndCByZWFsbHkKPiA+ID4gaGVscCBtZSwgYW5kIGNhbid0IHNl
ZSBtdWNoIGVsc2UgcmVsZXZhbnQgaW4gYSBxdWljayBzZWFyY2gKPiAKPiBTbyB0aGF0IGFwcGVh
cnMgdG8gYmUgYSA5cCAoQHZpcnRpby1QQ0kpIGNsaWVudCBmb3IgeGh5dmUsCgpvaCB0aGUgOXAg
cGFydCBpcyBjbGllbnQgY29kZT8KdGhlIHJlYWRtZSBzYXlzIGl0J3MgYSBzZXJ2ZXI6CiJJdCBp
bmNsdWRlcyBhIGNvbXBsZXRlIGh5cGVydmlzb3IsIGJhc2VkIG9uIHhoeXZlL2JoeXZlIgpidXQg
SSBjYW4ndCBydW4gaXQgYW55d2F5LCBzbyBJIGRpZG4ndCBjaGVjayB2ZXJ5IGhhcmQuCgo+IHdp
dGggbWF4LiAyNTZrQiBidWZmZXJzIDw9PiBtYXguIDY4IHZpcnRpbyBkZXNjcmlwdG9ycyAobWVt
b3J5IHNlZ21lbnRzKSBbMV06CgpodWguLi4KCldlbGwsIGFzIGxvbmcgYXMgbXNpemUgaXMgc2V0
IEkgYXNzdW1lIGl0J2xsIHdvcmsgb3V0IGFueXdheT8gSG93IGRvZXMKdmlydGlvIHF1ZXVlIHNp
emUgd29yayB3aXRoIGUuZy4gcGFyYWxsZWwgbWVzc2FnZXM/CgpBbnl3YXksIGV2ZW4gaWYgdGhl
IG5lZ290aWF0aW9uIHBhcnQgZ2V0cyBkb25lIHNlcnZlcnMgd29uJ3QgYWxsIGdldAppbXBsZW1l
bnRlZCBpbiBhIGRheSwgc28gd2UgbmVlZCB0byB0aGluayBvZiBvdGhlciBzZXJ2ZXJzIGEgYml0
Li4KCi0tCkRvbWluaXF1ZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK
