Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9496B79E4
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Mar 2023 15:08:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pbiqV-0001LB-7v;
	Mon, 13 Mar 2023 14:08:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <michal.swiatkowski@linux.intel.com>)
 id 1pbiqT-0001L0-MW for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=04mg2X/JfBK643xY0Z2PUyLcIHO3/hWyB1SXzqQz/B4=; b=JmxThaVog7WRrQEUZlrcyZ1MoG
 SXwbrMPExGder3ctYo1GO2rD3uCIP8KBXn913RgTABJF9x1klHugBxKQPSxCIZMtdICBSDmXiIW+8
 Zlgqb+hE+Mu8ByXMiq52SkPXP950N6JuAhFLj+vOKmp5UCr7owdT/OcJbs6R8HpsOe6w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=04mg2X/JfBK643xY0Z2PUyLcIHO3/hWyB1SXzqQz/B4=; b=S6+aZPIlxfS74crEIgxkkO8wgm
 vsmgXJ97NfjzKuMzvNYwA0dzPOKjzwgPFgD2ewUFp+uA1jHzvyaGg6lQXAwdadQN+xKmspGDPTgMO
 0vW9PwAptemTPYYxR46HQXFfpJJ/qA2UtNwu8tbfZIyAe4BmR+HXAblvEJziEhKSnDUE=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbiqT-006Xum-Pa for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 14:08:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678716493; x=1710252493;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+9a6Q4ROlaZhxAPlgTuY3rn4U+rycgts0stX1J/hbAI=;
 b=iPAyiChukt9i7zdOh48Ye/15V2v355+VHUWYzOOTKYL10tteofDNRei2
 Yc5XvpktDnsziTmINbBojUW2RcPt/sbfO8LjWB77CQJ6XgfPr1vpjo/6C
 eNpj0m9YF+v8IZv5Jdtgd6J1rz+rTAL7SbBNcGAOy2NHrSnzufhifoeor
 Wlb+JYFSuU34mhxIa1HxMJFrGDAz9ElFAJnCnQGZ3CIJGdNZpCQVof4FQ
 XOcVj81PUrg3c4ONiD+XeTYTUks2Q9/YjtnkeeRsR/iHJc7rdHWeFqipN
 vHm667ie3xIfHEx6pG1BIxAPy/59n9ROqDcs5NxRb3+vk7OpYzSbT1R5o A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="335852319"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="335852319"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:08:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="655982281"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="655982281"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:08:01 -0700
Date: Mon, 13 Mar 2023 15:07:52 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Zheng Hacker <hackerzheng666@gmail.com>
Message-ID: <ZA8uMtMyYKhcEYQ/@localhost.localdomain>
References: <20230313090002.3308025-1-zyytlz.wz@163.com>
 <ZA8rDCw+mJmyETEx@localhost.localdomain>
 <CAJedcCwgvo3meC=k_nPYrRzEj7Hzcy8kqrvHqHLvmPWLjCq_3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJedcCwgvo3meC=k_nPYrRzEj7Hzcy8kqrvHqHLvmPWLjCq_3Q@mail.gmail.com>
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Mar 13, 2023 at 10:01:21PM +0800, Zheng Hacker wrote:
    > Michal Swiatkowski <michal.swiatkowski@linux.intel.com> 于2023年3月13日周一
    21:54写道： > > > > On Mon, Mar 13, 2023 at 05:00:0 [...] 
 
 Content analysis details:   (-2.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [192.55.52.120 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pbiqT-006Xum-Pa
Subject: Re: [V9fs-developer] [PATCH net v2] 9p/xen : Fix use after free bug
 in xen_9pfs_front_remove due to race condition
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
Cc: lucho@ionkov.net, alex000young@gmail.com, pabeni@redhat.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux_oss@crudebyte.com,
 linux-kernel@vger.kernel.org, 1395428693sheep@gmail.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org,
 Zheng Wang <zyytlz.wz@163.com>, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

T24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTA6MDE6MjFQTSArMDgwMCwgWmhlbmcgSGFja2VyIHdy
b3RlOgo+IE1pY2hhbCBTd2lhdGtvd3NraSA8bWljaGFsLnN3aWF0a293c2tpQGxpbnV4LmludGVs
LmNvbT4g5LqOMjAyM+W5tDPmnIgxM+aXpeWRqOS4gCAyMTo1NOWGmemBk++8mgo+ID4KPiA+IE9u
IE1vbiwgTWFyIDEzLCAyMDIzIGF0IDA1OjAwOjAyUE0gKzA4MDAsIFpoZW5nIFdhbmcgd3JvdGU6
Cj4gPiA+IEluIHhlbl85cGZzX2Zyb250X3Byb2JlLCBpdCBjYWxscyB4ZW5fOXBmc19mcm9udF9h
bGxvY19kYXRhcmluZwo+ID4gPiB0byBpbml0IHByaXYtPnJpbmdzIGFuZCBib3VuZCAmcmluZy0+
d29yayB3aXRoIHA5X3hlbl9yZXNwb25zZS4KPiA+ID4KPiA+ID4gV2hlbiBpdCBjYWxscyB4ZW5f
OXBmc19mcm9udF9ldmVudF9oYW5kbGVyIHRvIGhhbmRsZSBJUlEgcmVxdWVzdHMsCj4gPiA+IGl0
IHdpbGwgZmluYWxseSBjYWxsIHNjaGVkdWxlX3dvcmsgdG8gc3RhcnQgdGhlIHdvcmsuCj4gPiA+
Cj4gPiA+IFdoZW4gd2UgY2FsbCB4ZW5fOXBmc19mcm9udF9yZW1vdmUgdG8gcmVtb3ZlIHRoZSBk
cml2ZXIsIHRoZXJlCj4gPiA+IG1heSBiZSBhIHNlcXVlbmNlIGFzIGZvbGxvd3M6Cj4gPiA+Cj4g
PiA+IEZpeCBpdCBieSBmaW5pc2hpbmcgdGhlIHdvcmsgYmVmb3JlIGNsZWFudXAgaW4geGVuXzlw
ZnNfZnJvbnRfZnJlZS4KPiA+ID4KPiA+ID4gTm90ZSB0aGF0LCB0aGlzIGJ1ZyBpcyBmb3VuZCBi
eSBzdGF0aWMgYW5hbHlzaXMsIHdoaWNoIG1pZ2h0IGJlCj4gPiA+IGZhbHNlIHBvc2l0aXZlLgo+
ID4gPgo+ID4gPiBDUFUwICAgICAgICAgICAgICAgICAgQ1BVMQo+ID4gPgo+ID4gPiAgICAgICAg
ICAgICAgICAgICAgICB8cDlfeGVuX3Jlc3BvbnNlCj4gPiA+IHhlbl85cGZzX2Zyb250X3JlbW92
ZXwKPiA+ID4gICB4ZW5fOXBmc19mcm9udF9mcmVlfAo+ID4gPiBrZnJlZShwcml2KSAgICAgICAg
ICB8Cj4gPiA+IC8vZnJlZSBwcml2ICAgICAgICAgIHwKPiA+ID4gICAgICAgICAgICAgICAgICAg
ICAgfHA5X3RhZ19sb29rdXAKPiA+ID4gICAgICAgICAgICAgICAgICAgICAgfC8vdXNlIHByaXYt
PmNsaWVudAo+ID4gPgo+ID4gPiBGaXhlczogNzFlYmQ3MTkyMWU0ICgieGVuLzlwZnM6IGNvbm5l
Y3QgdG8gdGhlIGJhY2tlbmQiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0
bHoud3pAMTYzLmNvbT4KPiA+ID4gLS0tCj4gPiA+IHYyOgo+ID4gPiAtIGZpeCB0eXBlIGVycm9y
IG9mIHJpbmcgZm91bmQgYnkga2VybmVsIHRlc3Qgcm9ib3QKPiA+ID4gLS0tCj4gPiA+ICBuZXQv
OXAvdHJhbnNfeGVuLmMgfCA1ICsrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9uZXQvOXAvdHJhbnNfeGVuLmMgYi9uZXQv
OXAvdHJhbnNfeGVuLmMKPiA+ID4gaW5kZXggYzY0MDUwZTgzOWFjLi44Mzc2NDQzMWMwNjYgMTAw
NjQ0Cj4gPiA+IC0tLSBhL25ldC85cC90cmFuc194ZW4uYwo+ID4gPiArKysgYi9uZXQvOXAvdHJh
bnNfeGVuLmMKPiA+ID4gQEAgLTI3NCwxMiArMjc0LDE3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
eGVuYnVzX2RldmljZV9pZCB4ZW5fOXBmc19mcm9udF9pZHNbXSA9IHsKPiA+ID4gIHN0YXRpYyB2
b2lkIHhlbl85cGZzX2Zyb250X2ZyZWUoc3RydWN0IHhlbl85cGZzX2Zyb250X3ByaXYgKnByaXYp
Cj4gPiA+ICB7Cj4gPiA+ICAgICAgIGludCBpLCBqOwo+ID4gPiArICAgICBzdHJ1Y3QgeGVuXzlw
ZnNfZGF0YXJpbmcgKnJpbmcgPSBOVUxMOwo+ID4gTW92ZSBpdCBiZWZvcmUgaW50IGksIGogdG8g
aGF2ZSBSQ1QuCj4gPgpTb3JyeSBJIGRpZG4ndCBub3RpY2UgaXQgYmVmb3JlLCBtb3ZlIHRoZSBk
ZWZpbml0aW9uIHRvIGZvciBsb29wLgoKPiA+ID4KPiA+ID4gICAgICAgd3JpdGVfbG9jaygmeGVu
XzlwZnNfbG9jayk7Cj4gPiA+ICAgICAgIGxpc3RfZGVsKCZwcml2LT5saXN0KTsKPiA+ID4gICAg
ICAgd3JpdGVfdW5sb2NrKCZ4ZW5fOXBmc19sb2NrKTsKPiA+ID4KPiA+ID4gICAgICAgZm9yIChp
ID0gMDsgaSA8IHByaXYtPm51bV9yaW5nczsgaSsrKSB7CkhlcmU6CnN0cnVjdCB4ZW5fOXBmc19k
YXRhcmluZyAqcmluZyA9ICZwcml2LT5yaW5nc1tpXTsKCj4gPiA+ICsgICAgICAgICAgICAgLypj
YW5jZWwgd29yayovCj4gPiBJdCBpc24ndCBuZWVkZWQgSSB0aGluaywgdGhlIGZ1bmN0aW9uIGNh
bmNlbF93b3JrX3N5bmMoKSB0ZWxscyBldmVyeXRoaW5nCj4gPiBoZXJlLgo+ID4KPiAKPiBHZXQg
aXQsIHdpbGwgcmVtb3ZlIGl0IGluIHRoZSBuZXh0IHZlcnNpb24gb2YgcGF0Y2guCj4gCj4gQmVz
dCByZWdhcmRzLAo+IFpoZW5nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby92OWZzLWRldmVsb3Blcgo=
