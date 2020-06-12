Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE8F1F75D8
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Jun 2020 11:23:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jjfu0-0005wP-C9; Fri, 12 Jun 2020 09:23:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wanghai38@huawei.com>) id 1jjfty-0005wC-UY
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KUFUseFzvFXN0QKXn3grVbxgUV1SAJW33Guzmt98S3Y=; b=m9FWwMBBY/zKPgjofMlhALur2Z
 GSTHMoL9Z1h4CvEsJfrIuRHYHmzOtodep/xQE4j6++4PtuZsZMy47L76A3UhylNZEfaAlpDoYOZi7
 GkTzzGlIL8FL31c/odsRjxiWwwVJtJZmIzfqGuTAcWKKh+u3Y8KUlkBtjFoGce+GqeU4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KUFUseFzvFXN0QKXn3grVbxgUV1SAJW33Guzmt98S3Y=; b=QtbiGW2yt6hE0it5tv4y5biHZI
 eN7fGPCoEA2n3YvBktiPHx8mZe5nrn1jKXc+HfL1j+esptpHfr5pAYPm6DRKymFo6eFI7M3CIeRMG
 Prh+zjpQWViFb037RsAuv31aNt19HI9l7kTzyJB451aiUoelUsqUmV/EhYZ7+p2CEALY=;
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jjftx-00HZuo-2B
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Jun 2020 09:23:06 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D606CA52C38657261C74;
 Fri, 12 Jun 2020 17:22:54 +0800 (CST)
Received: from [127.0.0.1] (10.166.215.205) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0;
 Fri, 12 Jun 2020 17:22:51 +0800
To: Dominique Martinet <asmadeus@codewreck.org>
References: <20200612090833.36149-1-wanghai38@huawei.com>
 <20200612091044.GA11129@nautica>
From: "wanghai (M)" <wanghai38@huawei.com>
Message-ID: <e59d96eb-9ef6-c6c9-2572-a3f219600130@huawei.com>
Date: Fri, 12 Jun 2020 17:22:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200612091044.GA11129@nautica>
X-Originating-IP: [10.166.215.205]
X-CFilter-Loop: Reflected
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jjftx-00HZuo-2B
Subject: Re: [V9fs-developer] [PATCH v2] 9p/trans_fd: Fix concurrency del of
 req_list in p9_fd_cancelled/p9_read_work
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CuWcqCAyMDIwLzYvMTIgMTc6MTAsIERvbWluaXF1ZSBNYXJ0aW5ldCDlhpnpgZM6Cj4gV2FuZyBI
YWkgd3JvdGUgb24gRnJpLCBKdW4gMTIsIDIwMjA6Cj4+IHA5X3JlYWRfd29yayBhbmQgcDlfZmRf
Y2FuY2VsbGVkIG1heSBiZSBjYWxsZWQgY29uY3VycmVudGx5Lgo+PiBJbiBzb21lIGNhc2VzLCBy
ZXEtPnJlcV9saXN0IG1heSBiZSBkZWxldGVkIGJ5IGJvdGggcDlfcmVhZF93b3JrCj4+IGFuZCBw
OV9mZF9jYW5jZWxsZWQuCj4+Cj4+IFdlIGNhbiBmaXggaXQgYnkgaWdub3JpbmcgcmVwbGllcyBh
c3NvY2lhdGVkIHdpdGggYSBjYW5jZWxsZWQKPj4gcmVxdWVzdCBhbmQgaWdub3JpbmcgY2FuY2Vs
bGVkIHJlcXVlc3QgaWYgbWVzc2FnZSBoYXMgYmVlbiByZWNlaXZlZAo+PiBiZWZvcmUgbG9jay4K
Pj4KPj4gRml4ZXM6IDYwZmY3NzljNGFiYiAoIjlwOiBjbGllbnQ6IHJlbW92ZSB1bnVzZWQgY29k
ZSBhbmQgYW55IHJlZmVyZW5jZSB0byAiY2FuY2VsbGVkIiBmdW5jdGlvbiIpCj4+IFJlcG9ydGVk
LWJ5OiBzeXpib3QrNzdhMjVhY2ZhMDM4MmUwNmFiMjNAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNv
bQo+PiBTaWduZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdlaS5jb20+Cj4gVGhh
bmtzISBsb29rcyBnb29kIHRvIG1lLCBJJ2xsIHF1ZXVlIGZvciA1LjkgYXMgd2VsbCB1bmxlc3Mg
eW91J3JlIGluIGEKPiBodXJyeS4KT2ssIHRoYW5rcy4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5
ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
