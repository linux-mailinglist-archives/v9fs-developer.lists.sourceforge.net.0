Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 645B1359780
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 10:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:To:Message-ID:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zOHigKZLeCfrNJRcabUozmCKHMjHHuRC1NF0m+EOQjQ=; b=jvVOd10Oe/Wj2kwX4aNbvU0sAa
	0GZWi7VeLV+AJUejggO68YA1H76SsPN1flFONuBNzDonzCYP8BnNtV9eEydSGYmv5szheNLp18jNv
	nbC6VsHrrSWjg13DBfaRz3PALM2PDdzW7NnLj5593npZtQXus5vmD4Ellity5yaICcG8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUmL0-0002gP-3k; Fri, 09 Apr 2021 08:17:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <no-reply@amazon.co.jp>) id 1lUmKx-0002ff-Md
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YnQgSTGR3lQdrz3TTXSsT5hMyiBsTfcMgPMq9dN6Ovw=; b=TbCW/ihaYT4hApsHkB3svsYOCi
 ahuEQw8Cgjeimrns1ggClFjKBGMmzABmTfbH0kd4LdBrC+qCLFRULTZpP5IglovgQbk0j8NpemsS1
 nqyEhrNElghXCaB7OlCOPBc5kzyiC2Th4KkJtY/fBJpHwNS/mLEPVfJA95T8ax6o1b94=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=YnQgSTGR3lQdrz3TTXSsT5hMyiBsTfcMgPMq9dN6Ovw=; b=K
 fhnjBCI1ayoEIhuVkZlDCl5LAnxWDWxpnJvnhMqodVYdlkHHbclZjpqqkpFZMxXcdcUOObv9Bykl0
 Axsmz/zQ700NBSLsiTpFlHab5VPW8v4mSlMCfc4AGuEoq6wHs0W9bSGGGcVOp2hmXMtka1Zswo0He
 s/xgWZMvc4dQkmzo=;
Received: from [123.58.197.115] (helo=amazon.co.jp)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1lUmKZ-0001TE-19
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 08:17:53 +0000
Message-ID: <20210409161731813617@amazon.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Fri, 9 Apr 2021 16:17:18 +0800
MIME-Version: 1.0
X-mailer: Bbgn 5
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amazon.co.jp]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [123.58.197.115 listed in zen.spamhaus.org]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUmKZ-0001TE-19
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?QW1hem9uLmNvLmpwIOOCouOCq+OCpuODsw==?=
	=?utf-8?b?44OI5omA5pyJ5qip44Gu6Ki85piO77yI5ZCN5YmN44CB44Gd44Gu5LuW?=
	=?utf-8?b?5YCL5Lq65oOF5aCx77yJ44Gu56K66KqN?=
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
From: =?utf-8?B?0JBtYXpvbiBJRA==?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?0JBtYXpvbiBJRA==?= <no-reply@amazon.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

IA0KDQoNCg0KDQoNCuW5s+e0oOOBryBBbWF6b24uY28uanAg44KS44GU5Yip55So44GE44Gf44Gg
44GN44CB6Kqg44Gr44GC44KK44GM44Go44GG44GU44GW44GE44G+44GZ44CCDQoNCg0K44GK5a6i
5qeY44Gu44Ki44Kr44Km44Oz44OI44Gn55Ww5bi444Gq44Ki44Kv44OG44Kj44OT44OG44Kj44GM
5qSc5Ye644GV44KM44Gf44Gf44KBQW1hem9uIOOCouOCq+OCpuODs+ODiOOCkuWBnOatouOBleOB
m+OBpuOBhOOBn+OBoOOBhOOBpuOBiuOCiuOBvuOBmeOAguOCouOCq+OCpuODs+ODiOOBq+ODreOC
sOOCpOODs+OBl+OBpueUu+mdouOBruaMh+ekuuOBq+W+k+OBhuOBk+OBqOOBp+OAgeOCouOCq+OC
puODs+ODiOOBruODreODg+OCr+OCkuino+mZpOOBl+OBpuOBhOOBn+OBoOOBkeOBvuOBmeOAgg0K
DQoNCkFtYXpvbiDjg63jgrDjgqTjg7MgDQoNCg0K6KuL5rGC5YWI5oOF5aCx44Gu56K66KqN44GM
5a6M5LqG44GZ44KL44G+44Gn44CB44GK5a6i5qeY44Gu44Ki44Kr44Km44Oz44OI44G444Gu44Ki
44Kv44K744K544KS5YGc5q2i44GV44Gb44Gm44GE44Gf44Gg44GN44G+44GZ44Gu44Gn44CB44GU
5LqG5om/44GP44Gg44GV44GE44CCDQoNCueVsOW4uOOBquODreOCsOOCpOODs0lQ77yaNjQuNTYy
LjMzLjkzOQ0KDQoNCuS9leWNkuOAgeOCiOOCjeOBl+OBj+OBiumhmOOBhOeUs+OBl+S4iuOBkuOB
vuOBmeOAgg0KDQoNCkFtYXpvbi5jby5qcOOBruOBvuOBn+OBruOBlOWIqeeUqOOCkuOBiuW+heOB
oeOBl+OBpuOBiuOCiuOBvuOBmeOAggpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
