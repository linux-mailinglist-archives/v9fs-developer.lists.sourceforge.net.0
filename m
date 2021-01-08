Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7217B2EF632
	for <lists+v9fs-developer@lfdr.de>; Fri,  8 Jan 2021 18:05:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D8qswmseDeKNKNYc6z7UMjvEkNvKbADgUqHaaum+Fik=; b=jCP/c0RAErxUDGsolNu5JikOvq
	+6CGivuG+d/hMshuSUdy8d9UQCYqtVzJnLX/wLPFA4Rs4BkJBwGpmLtL/WuBn2izyeeg01sYt0O0V
	ONYap5N47hNQMcuMx1uCIjMn9IdZpa3yZ45ORC4u3+w2E+YNenkIVM3sd647jtjwsw/Y=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kxvCb-00021E-5z; Fri, 08 Jan 2021 17:05:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@biz-hubs.info>) id 1kxvCa-000214-7j
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 17:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BocLh9SfcazPcyDFayMzDIkbIRRXNNzSYbhgJ3U3pTA=; b=ajxCKAg8bRh/chQJxEFnO/vrrm
 hAOnb/PiBAz5S0GvTfO8ZUuWVVB3Y4ntHYvjngcPcMmFhConq/iZ/AO9fvTo6N/PYpC9iBVafxq4W
 kJMUN2arkFPEo2qFRHGn4+zkLDZby/9Tn/ZhXLB+g56ClJ8ZooHttr44Vb2/qku1GOEI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BocLh9SfcazPcyDFayMzDIkbIRRXNNzSYbhgJ3U3pTA=; b=SeMGGjZiFR63KZaDbugbo9uXpu
 /gH+zk9mbwJ4GTzE24xCoEp6Yi2PmvRRIC1jl/ufPcoWPxcH6GYb/De9SJTmz+457seJKDvHrj5W9
 oUgXOPuDXwOPgUdOCOYc1cG4PhsB3RZ9wJsZd2fAG841sxrQD63tmxuVI1PvA3ImduZQ=;
Received: from biz-hubs.info ([106.75.175.89])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kxvCN-000bfY-D6
 for v9fs-developer@lists.sourceforge.net; Fri, 08 Jan 2021 17:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=biz-hubs.info;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@biz-hubs.info; bh=XCKvsKYr0h4xoniO4JLpBkJiZew=;
 b=lUwscGmLFGcOqzE+m3NSPvXG/tWA6r7jnp3crGFHg5jjV1afwb8r7Mw4GGoALVwZQ8n2KwBBAs+f
 EAXBV6zmxZ0hYbGJDRAQ5Eboo3SoIfiPTx6Rp8n2CJuwKEMi87W/ixBlX1Bcr+EvxpMCk0V52rPd
 ZGr+eA0Ze5lMpq1bnDE=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=biz-hubs.info;
 b=UsWjYRg+GoKy388uhKFnYg/0gSuGvJKKFe4+uSvxdCjRWZG4+09Hd87RoWRPEMvuyfa/CdvneRIj
 RKm1sA6JIykBF+kHm7Gt0uZTZQo/RX/n5VvvwnV7N/dVFQPwu4WvzQ/qy5Uj3PVRegRdTU/XY8Rz
 MSLzzNgw3BYMDAg3lP8=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 09 Jan 2021 01:05:01 +0800
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?106.75.175.89>]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jacksonjrc75[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [106.75.175.89 listed in psbl.surriel.com]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [106.75.175.89 listed in bl.mailspike.net]
 1.0 MISSING_MID            Missing Message-Id: header
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1kxvCN-000bfY-D6
Subject: [V9fs-developer] subject
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
From: sales--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: jacksonjrc75@gmail.com
Cc: sales@biz-hubs.info
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kxvCb-00021E-5z@sfs-ml-2.v29.lw.sourceforge.com>

Hallo!

Ist diese E-Mail-Adresse aktiv? Ich habe Ihnen fr=FCher eine Nachricht bez=
=FCglich Ihrer Spende gesendet. Haben Sie sie erhalten? Bitte best=E4tigen =
Sie und melden Sie sich bei uns
 =

Freundliche Gr=FC=DFe
Jackson JR


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
