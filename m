Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F9526E705
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Sep 2020 23:02:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kJ13O-00062o-28; Thu, 17 Sep 2020 21:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <richard@nod.at>) id 1kJ13M-00062Z-El
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 21:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NKhKlG7Pv6BH9AG+5TTdUE7vgw0D86nQlTFXf2PjlPg=; b=hLNlfLgEJ+YXLGafF7GB9W8STm
 8q2ZCyGM8oPhafKXQAD5Gw5N/Uvoan7TrmRK91M+W7NyW9odykFvyiUVaAc4r0bTtGBCOfwj2RNOI
 /CWWFgv/G8aEQ+EpZB6spys0upqH3NxoR/XYrYs04mVj/XPTNB/YPBmcRVvxSu4HyfPY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NKhKlG7Pv6BH9AG+5TTdUE7vgw0D86nQlTFXf2PjlPg=; b=cqgVaERPmNmgBDj9fWBfsDSuCO
 5zHeBWI1i/+QZvLtits3urDot/7hVYsH6bWkduvIstN+btcUrZEXi7h10RefSkHinqMgildCGPhvs
 O/vViVlhVHUdwWSANp6GMUDh4ObsXZ4tj3ewXDk7DGG/aXnxQ8VR2jEuT2aYKbHmjy5E=;
Received: from lithops.sigma-star.at ([195.201.40.130])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kJ13G-00DRkp-Rv
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Sep 2020 21:02:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D044C6074023;
 Thu, 17 Sep 2020 22:46:53 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id b95lGeAHKEV9; Thu, 17 Sep 2020 22:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 465F4607403B;
 Thu, 17 Sep 2020 22:46:53 +0200 (CEST)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id hHdZoVyeGGFV; Thu, 17 Sep 2020 22:46:53 +0200 (CEST)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id 139CF6074023;
 Thu, 17 Sep 2020 22:46:53 +0200 (CEST)
Date: Thu, 17 Sep 2020 22:46:52 +0200 (CEST)
From: Richard Weinberger <richard@nod.at>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <482280458.101023.1600375612958.JavaMail.zimbra@nod.at>
In-Reply-To: <20200917151050.5363-12-willy@infradead.org>
References: <20200917151050.5363-1-willy@infradead.org>
 <20200917151050.5363-12-willy@infradead.org>
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF78 (Linux)/8.8.12_GA_3809)
Thread-Topic: ubifs: Tell the VFS that readpage was synchronous
Thread-Index: p/3vZsFlTtSUPnLB3kKvb/O8V+m25A==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kJ13G-00DRkp-Rv
Subject: Re: [V9fs-developer] [PATCH 11/13] ubifs: Tell the VFS that
 readpage was synchronous
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
Cc: linux-cifs@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-mm <linux-mm@kvack.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel <ceph-devel@vger.kernel.org>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogIk1hdHRoZXcgV2lsY294IiA8
d2lsbHlAaW5mcmFkZWFkLm9yZz4KPiBBbjogImxpbnV4LWZzZGV2ZWwiIDxsaW51eC1mc2RldmVs
QHZnZXIua2VybmVsLm9yZz4KPiBDQzogIk1hdHRoZXcgV2lsY294IiA8d2lsbHlAaW5mcmFkZWFk
Lm9yZz4sICJsaW51eC1tbSIgPGxpbnV4LW1tQGt2YWNrLm9yZz4sIHY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldCwKPiAibGludXgta2VybmVsIiA8bGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZz4sIGxpbnV4LWFmc0BsaXN0cy5pbmZyYWRlYWQub3JnLCAiY2VwaC1kZXZlbCIK
PiA8Y2VwaC1kZXZlbEB2Z2VyLmtlcm5lbC5vcmc+LCBsaW51eC1jaWZzQHZnZXIua2VybmVsLm9y
ZywgZWNyeXB0ZnNAdmdlci5rZXJuZWwub3JnLCAibGludXgtdW0iCj4gPGxpbnV4LXVtQGxpc3Rz
LmluZnJhZGVhZC5vcmc+LCAibGludXgtbXRkIiA8bGludXgtbXRkQGxpc3RzLmluZnJhZGVhZC5v
cmc+LCAicmljaGFyZCIgPHJpY2hhcmRAbm9kLmF0Pgo+IEdlc2VuZGV0OiBEb25uZXJzdGFnLCAx
Ny4gU2VwdGVtYmVyIDIwMjAgMTc6MTA6NDgKPiBCZXRyZWZmOiBbUEFUQ0ggMTEvMTNdIHViaWZz
OiBUZWxsIHRoZSBWRlMgdGhhdCByZWFkcGFnZSB3YXMgc3luY2hyb25vdXMKCj4gVGhlIHViaWZz
IHJlYWRwYWdlIGltcGxlbWVudGF0aW9uIHdhcyBhbHJlYWR5IHN5bmNocm9ub3VzLCBzbyB1c2UK
PiBBT1BfVVBEQVRFRF9QQUdFIHRvIGF2b2lkIGN5Y2xpbmcgdGhlIHBhZ2UgbG9jay4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IFdpbGNveCAoT3JhY2xlKSA8d2lsbHlAaW5mcmFkZWFkLm9y
Zz4KPiAtLS0KPiBmcy91Ymlmcy9maWxlLmMgfCAxNiArKysrKysrKysrLS0tLS0tCj4gMSBmaWxl
IGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpGb3IgdWJpZnMsIGpm
ZnMyIGFuZCBob3N0ZnM6CgpBY2tlZC1ieTogUmljaGFyZCBXZWluYmVyZ2VyIDxyaWNoYXJkQG5v
ZC5hdD4KClRoYW5rcywKLy9yaWNoYXJkCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxv
cGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9s
aXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
