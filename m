Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AD2629AB1
	for <lists+v9fs-developer@lfdr.de>; Tue, 15 Nov 2022 14:37:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ouw8J-0000Bo-U0;
	Tue, 15 Nov 2022 13:37:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zhangpeng362@huawei.com>) id 1ouw8I-0000Bh-47
 for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 13:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:CC:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hLTw2IcN69hgfypxUFQugjghCh8MluyQ0rte2tYGzLw=; b=ctc2hT4w8LLY2uX74mdQzfU9qT
 c1xgVO/AYaf2vEcNnQzXekXP7pSHZd/SJ4c8gQj3l7ifgENjoRMJGQIQHgk44H1i0CPnBcDln67jD
 Tr1jzCMtMduhNRdhiEb1SmuVdBj01br2qkGfs6AuBstAUY7qiH7mjaQM+Uthd+T21mFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hLTw2IcN69hgfypxUFQugjghCh8MluyQ0rte2tYGzLw=; b=H3SbEROfR4ax5itp+mvP0PvFnr
 393R/r55rH2hHS2Ek/Zt2GTEDtBD5kVrTYLGXHEkLdEr2rgF9gRrp4ZsXuU7PzHjyCvna7kTRStuL
 124IhQiuAVtQKXOVS9spf8ff3/w3BREc+L3ghnM5FHPQFvo4LptJ7SozcRMmY3ubpGuc=;
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouw8C-00978Y-Gc for v9fs-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 13:37:46 +0000
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NBS031s80zmVwC;
 Tue, 15 Nov 2022 21:37:07 +0800 (CST)
Received: from kwepemm600020.china.huawei.com (7.193.23.147) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 21:37:28 +0800
Received: from [10.174.179.160] (10.174.179.160) by
 kwepemm600020.china.huawei.com (7.193.23.147) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 15 Nov 2022 21:37:27 +0800
Message-ID: <9d5d866d-9f44-5ca9-a7ca-87e38f93e17d@huawei.com>
Date: Tue, 15 Nov 2022 21:37:26 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: <asmadeus@codewreck.org>, <dhowells@redhat.com>
References: <20221115122701.2117502-1-zhangpeng362@huawei.com>
 <Y3OH+Dmi0QIOK18n@codewreck.org>
In-Reply-To: <Y3OH+Dmi0QIOK18n@codewreck.org>
X-Originating-IP: [10.174.179.160]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600020.china.huawei.com (7.193.23.147)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  在 2022/11/15 20:37, asmadeus@codewreck.org 写道: > Peng
    Zhang wrote on Tue, Nov 15, 2022 at 12:27:01PM +0000: >> The type of a->key[0]
    is char. If the length of cache volume key is >> greater than [...] 
 
 Content analysis details:   (-2.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [45.249.212.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1ouw8C-00978Y-Gc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH] fscache: fix OOB Read in
 __fscache_acquire_volume
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
From: "zhangpeng \(AS\) via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "zhangpeng \(AS\)" <zhangpeng362@huawei.com>
Cc: lucho@ionkov.net, ericvh@gmail.com, linux_oss@crudebyte.com,
 jlayton@kernel.org, linux-kernel@vger.kernel.org,
 syzbot+a76f6a6e524cf2080aa3@syzkaller.appspotmail.com,
 v9fs-developer@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CuWcqCAyMDIyLzExLzE1IDIwOjM3LCBhc21hZGV1c0Bjb2Rld3JlY2sub3JnIOWGmemBkzoKPiBQ
ZW5nIFpoYW5nIHdyb3RlIG9uIFR1ZSwgTm92IDE1LCAyMDIyIGF0IDEyOjI3OjAxUE0gKzAwMDA6
Cj4+IFRoZSB0eXBlIG9mIGEtPmtleVswXSBpcyBjaGFyLiBJZiB0aGUgbGVuZ3RoIG9mIGNhY2hl
IHZvbHVtZSBrZXkgaXMKPj4gZ3JlYXRlciB0aGFuIDEyNywgdGhlIHZhbHVlIG9mIGEtPmtleVsw
XSBpcyBsZXNzIHRoYW4gMC4gSW4gdGhpcyBjYXNlLAo+PiBrbGVuIGJlY29tZXMgbXVjaCBsYXJn
ZXIgdGhhbiAyNTUgYWZ0ZXIgdHlwZSBjb252ZXJzaW9uLCBiZWNhdXNlIHRoZQo+PiB0eXBlIG9m
IGtsZW4gaXMgc2l6ZV90LiBBcyBhIHJlc3VsdCwgbWVtY21wKCkgaXMgcmVhZCBvdXQgb2YgYm91
bmRzLiBGaXgKPj4gdGhpcyBieSBhZGRpbmcgYSBjaGVjayBvbiB0aGUgbGVuZ3RoIG9mIHRoZSBr
ZXkgaW4KPj4gdjlmc19jYWNoZV9zZXNzaW9uX2dldF9jb29raWUoKS4KPiBUaGFua3MgZm9yIHRo
ZSBhbmFseXNpcy4gKGl0IHRvb2sgbWUgYSB3aGlsZSB0byB1bmRlcnN0YW5kIHdoYXQgYS0+a2V5
Cj4gd2FzIGFib3V0LCB0aGlzIGlzIHJlZmVycmluZyB0byB0aGUgY29kZSBpbiBmc2NhY2hlX3Zv
bHVtZV9zYW1lLi4uKQo+Cj4gSXQgZmVlbHMgbGlrZSB0aGF0J3MgYW5vdGhlciBwcm9ibGVtIHRo
YXQgY291bGQgYmUgYXZvaWRlZCBieSB1c2luZwo+IHVuc2lnbmVkLi4uIGJ1dCBJIGRvbid0IGtu
b3cgZW5vdWdoIGFib3V0IGZzY2FjaGUgdG8gY29tbWVudCBzZXJpb3VzbHkKPiBhYm91dCB3aGV0
aGVyIHRoYXQnZCBiZSB2aWFibGUgb3Igbm90LCBhbmQgaXQnZCBqdXN0IHB1bnQgdGhlIGxpbWl0
IGZyb20KPiAxMjcgdG8gMjU1IGFueXdheS4KPgo+IFJhdGhlciB0aGFuIHRoaXMgcGF0Y2gsIEkn
dmUgaGFkIGEgcXVpY2sgbG9vayBhdCBhZnMvY2lmcy9jZXBoIGFuZCBpdAo+IGRvZXNlbid0IGxv
b2sgbGlrZSBhbnkgb2YgdGhlc2UgY2hlY2sgdGhlIG5hbWUgbGVuZ3RoIGJlZm9yZSBjYWxsaW5n
Cj4gZnNjYWNoZV9hY3F1aXJlX3ZvbHVtZSBlaXRoZXIgLS0gSSdkIHNheSBpdCdzIHdvcnRoIG1v
dmluZyB0aGF0IGNoZWNrCj4gdGhlcmUuCj4gUGVyaGFwcyBpbiBmc2NhaGNlX2FsbG9jX3ZvbHVt
ZSgpIHRoZXkgYWxyZWFkeSBjb21wdXRlCj4ga2xlbiA9IHN0cmxlbih2b2x1bWVfa2V5KSB0byBz
dG9yZSBpdCBpbiBrZXlbMF0gLS0gbWFraW5nIHN1cmUgaXQgZml0cwo+IGEgc2lnbmVkIGNoYXIg
YmVmb3JlIHdyaXRpbmcga2V5WzBdIHNvdW5kcyBsaWtlIGEgZ29vZCBpZGVhIHRoYXQnZAo+IGJl
bmVmaXQgZXZlcnlvbmU/Cj4KPiBQbGVhc2UgdGVzdCB0aGlzIChmZWVsIGZyZWUgdG8gcmVzZW5k
IHRoYXQpOgo+IC0tLQo+IGRpZmYgLS1naXQgYS9mcy9mc2NhY2hlL3ZvbHVtZS5jIGIvZnMvZnNj
YWNoZS92b2x1bWUuYwo+IGluZGV4IGEwNThlMDEzNmJmZS4uY2MyMDZkNWU0Y2M3IDEwMDY0NAo+
IC0tLSBhL2ZzL2ZzY2FjaGUvdm9sdW1lLmMKPiArKysgYi9mcy9mc2NhY2hlL3ZvbHVtZS5jCj4g
QEAgLTIzMCw2ICsyMzAsOCBAQCBzdGF0aWMgc3RydWN0IGZzY2FjaGVfdm9sdW1lICpmc2NhY2hl
X2FsbG9jX3ZvbHVtZShjb25zdCBjaGFyICp2b2x1bWVfa2V5LAo+ICAgCSAqIGhhc2hpbmcgZWFz
aWVyLgo+ICAgCSAqLwo+ICAgCWtsZW4gPSBzdHJsZW4odm9sdW1lX2tleSk7Cj4gKwlpZiAoa2xl
biA+IDEyNykKPiArCQlnb3RvIGVycl9jYWNoZTsKPiAgIAlobGVuID0gcm91bmRfdXAoMSArIGts
ZW4gKyAxLCBzaXplb2YoX19sZTMyKSk7Cj4gICAJa2V5ID0ga3phbGxvYyhobGVuLCBHRlBfS0VS
TkVMKTsKPiAgIAlpZiAoIWtleSkKPiAtLS0KPgo+Cj4gRGF2aWQsIGNvbW1lbnRzIHdlbGNvbWUg
OikKPgo+IC0tCj4gRG9taW5pcXVlCgpUaGFua3MgZm9yIHlvdXIgYWR2aWNlLiBJdCdzIG1vcmUg
dGhvdWdodGZ1bCB0byBtYWtlIHN1cmUgdGhlIGxlbmd0aCBvZiAKY2FjaGUgdm9sdW1lIGtleSBm
aXRzIGEgc2lnbmVkIGNoYXIgYmVmb3JlIHdyaXRpbmcga2V5WzBdIHdoaWNoIHdpbGwgCmJlbmVm
aXQgZXZlcnlvbmUuIEFmdGVyIHRlc3RpbmcsIHRoaXMgcGF0Y2ggd29ya3MgZmluZS4KCkkgd2ls
bCBzZW5kIHRoZSBQYXRjaCB2MiBzb29uLiBUaGFua3MgYSBsb3QuIC0tIFpoYW5nIFBlbmcKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
