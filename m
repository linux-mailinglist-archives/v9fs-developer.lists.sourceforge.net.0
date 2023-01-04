Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAF765CB6C
	for <lists+v9fs-developer@lfdr.de>; Wed,  4 Jan 2023 02:30:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pCscJ-0007oZ-T1;
	Wed, 04 Jan 2023 01:30:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shaozhengchao@huawei.com>) id 1pCscH-0007oS-G5
 for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 01:30:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eHeetEGG/rOqW57Jn2e0qaiqRpHKXTskfQUnSSBZzwQ=; b=UQhDn2I0ryDQYBPJaCskHRYkQ2
 XEq/GHT+Fe+eftr+1/0aCU4F1GpxI8gVLyclkFWgbcGzjjWIJhvDbrUhg27f/TTKDRlwi2f/2cE7Z
 lRY1VvYHCOK2lCD5Ajpe1dhr138biLwgZpKI4gBdpxIhD8MV2ln+g1d0XMRYOa/uXR5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eHeetEGG/rOqW57Jn2e0qaiqRpHKXTskfQUnSSBZzwQ=; b=jbH5eg6BcVva6rP8m/fSXHpKF6
 pI9hbH4gbPezLWWJ0ky6SiLIeTcQe0iRY2FIo+bnlBr89nGIX2LbhbFLdfPIAKmfZhYa4NM5JbQix
 vcZngHwe9YdbcNCKd9FXIeUFU1/D5Rk7VLxMkESz69mflebAjNspbtlZux9SqqrqomPQ=;
Received: from szxga03-in.huawei.com ([45.249.212.189])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pCsc8-0007tv-QJ for v9fs-developer@lists.sourceforge.net;
 Wed, 04 Jan 2023 01:30:49 +0000
Received: from dggpeml500026.china.huawei.com (unknown [172.30.72.53])
 by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NmsQ254bGzJppd;
 Wed,  4 Jan 2023 09:26:34 +0800 (CST)
Received: from [10.174.178.66] (10.174.178.66) by
 dggpeml500026.china.huawei.com (7.185.36.106) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.34; Wed, 4 Jan 2023 09:30:33 +0800
Message-ID: <d245e68f-7105-6c12-b732-90d9fef8fb77@huawei.com>
Date: Wed, 4 Jan 2023 09:30:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
To: Leon Romanovsky <leon@kernel.org>
References: <20221220031223.3890143-1-shaozhengchao@huawei.com>
 <Y6wN4uBZwPV+rKXi@unreal>
In-Reply-To: <Y6wN4uBZwPV+rKXi@unreal>
X-Originating-IP: [10.174.178.66]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500026.china.huawei.com (7.185.36.106)
X-CFilter-Loop: Reflected
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/12/28 17:35, Leon Romanovsky wrote: > On Tue, Dec
 20, 2022 at 11:12:23AM +0800,
 Zhengchao Shao wrote: >> When down_interruptible()
 failed in rdma_request(), receive dma buffer >> is not unmapp [...] 
 Content analysis details:   (-5.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.189 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 -3.1 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pCsc8-0007tv-QJ
Subject: Re: [V9fs-developer] [PATCH] 9p/rdma: unmap receive dma buffer in
 rdma_request()
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
From: shaozhengchao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: shaozhengchao <shaozhengchao@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, yuehaibing@huawei.com, tom@opengridcomputing.com,
 edumazet@google.com, weiyongjun1@huawei.com, kuba@kernel.org,
 v9fs-developer@lists.sourceforge.net, pabeni@redhat.com, davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgpPbiAyMDIyLzEyLzI4IDE3OjM1LCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6Cj4gT24gVHVlLCBE
ZWMgMjAsIDIwMjIgYXQgMTE6MTI6MjNBTSArMDgwMCwgWmhlbmdjaGFvIFNoYW8gd3JvdGU6Cj4+
IFdoZW4gZG93bl9pbnRlcnJ1cHRpYmxlKCkgZmFpbGVkIGluIHJkbWFfcmVxdWVzdCgpLCByZWNl
aXZlIGRtYSBidWZmZXIKPj4gaXMgbm90IHVubWFwcGVkLiBBZGQgdW5tYXAgYWN0aW9uIHRvIGVy
cm9yIHBhdGguCj4+Cj4+IEZpeGVzOiBmYzc5ZDRiMTA0ZjAgKCI5cDogcmRtYTogUkRNQSBUcmFu
c3BvcnQgU3VwcG9ydCBmb3IgOVAiKQo+PiBTaWduZWQtb2ZmLWJ5OiBaaGVuZ2NoYW8gU2hhbyA8
c2hhb3poZW5nY2hhb0BodWF3ZWkuY29tPgo+PiAtLS0KPj4gICBuZXQvOXAvdHJhbnNfcmRtYS5j
IHwgMiArKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAt
LWdpdCBhL25ldC85cC90cmFuc19yZG1hLmMgYi9uZXQvOXAvdHJhbnNfcmRtYS5jCj4+IGluZGV4
IDgzZjkxMDBkNDZiZi4uZGE4MzAyM2ZlY2JmIDEwMDY0NAo+PiAtLS0gYS9uZXQvOXAvdHJhbnNf
cmRtYS5jCj4+ICsrKyBiL25ldC85cC90cmFuc19yZG1hLmMKPj4gQEAgLTQ5OSw2ICs0OTksOCBA
QCBzdGF0aWMgaW50IHJkbWFfcmVxdWVzdChzdHJ1Y3QgcDlfY2xpZW50ICpjbGllbnQsIHN0cnVj
dCBwOV9yZXFfdCAqcmVxKQo+PiAgIAo+PiAgIAlpZiAoZG93bl9pbnRlcnJ1cHRpYmxlKCZyZG1h
LT5zcV9zZW0pKSB7Cj4+ICAgCQllcnIgPSAtRUlOVFI7Cj4+ICsJCWliX2RtYV91bm1hcF9zaW5n
bGUocmRtYS0+Y21faWQtPmRldmljZSwgYy0+YnVzYSwKPj4gKwkJCQkgICAgYy0+cmVxLT50Yy5z
aXplLCBETUFfVE9fREVWSUNFKTsKPj4gICAJCWdvdG8gc2VuZF9lcnJvcjsKPj4gICAJfQo+IAo+
IEl0IGlzIG5vdCB0aGUgb25seSBwbGFjZSB3aGVyZSBpYl9kbWFfdW5tYXBfc2luZ2xlKCkgd2Fz
bid0IGNhbGxlZC4KPiBFdmVuIGF0IHRoZSBzYW1lIGZ1bmN0aW9uIGlmIGliX3Bvc3Rfc2VuZCgp
IGZhaWxzLCB0aGUgdW5tYXAgaXMgbm90Cj4gY2FsbGVkLiBBbHNvIHBvc3RfcmVjdigpIGlzIG1p
c3NpbmcgY2FsbCB0byBpYl9kbWFfdW5tYXBfc2luZ2xlKCkgdG9vLgo+IAo+IFRoYW5rcwo+IApI
aSBMZW9u77yaCglUaGFuayB5b3UgZm9yIHlvdXIgcmV2aWV3LiBJJ20gc29ycnkgSSBoYXZlbid0
IGFuc3dlcmVkIHlvdXIKbWVzc2FnZSBmb3Igc28gbG9uZywgSSd2ZSBnb3QgQ29yb25hdmlydXMg
YW5kIGl0J3MgYSB0ZXJyaWJsZSBmZWVsaW5nLgpJIHdpbGwgc2VuZCB2MiBzb29uLgoKWmhlbmdj
aGFvIFNoYW8KPj4gICAKPj4gLS0gCj4+IDIuMzQuMQo+PgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApW
OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
