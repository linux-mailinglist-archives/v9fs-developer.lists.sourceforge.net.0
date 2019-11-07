Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EB7F2723
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Nov 2019 06:33:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iSaQb-0002Jm-2M; Thu, 07 Nov 2019 05:33:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <choimj@isd.co.kr>) id 1iSaQa-0002Jg-7H
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 05:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:Message-ID:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QVoAY7YSm5gI0ETTIdpwA+a/b4d5ZDKFa9WgpDgqT58=; b=CfWVQK/28S5TZ89a4gFOkbEQbv
 2JytL2iqDp/ozDsahwtA18Wx7xAEi+8w5Am1cf9U+06ZyUEf7amN/8m65LqUlknOCVUV2/jznOVPb
 eZdij+llu62XCeq4mh3hNUt3jqB70yLlw14sdUM3rpoJkWq7ZTDv2B2FWc9Z255d9+5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Message-ID:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QVoAY7YSm5gI0ETTIdpwA+a/b4d5ZDKFa9WgpDgqT58=; b=j
 WI6F3jjqs8bo4CiHU2ooom6bkCOJilNK1I+CdzqK3WE5+vmFLhvd57XKFcxdhdxPZUhAFzhvY0mkI
 UBsggkk3bLgqnC0Z/Pk+xIjCFU28GRxRFcHD76xHK3ToQ4III9xVFtyieBV4gn/4m7nYQ+Y+VB9jC
 RH0B/+IvOjujBP14=;
Received: from [211.53.128.215] (helo=MAIL.isd.co.kr)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1iSaQW-003DS3-RQ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Nov 2019 05:33:52 +0000
Received: from 192.168.1.3 (217.217.179.17) by MAIL.isd.co.kr (10.10.10.22)
 with Microsoft SMTP Server id 14.3.123.3; Thu, 7 Nov 2019 14:33:09 +0900
Date: Thu, 7 Nov 2019 06:33:04 +0100
From: Peter Wong <choimj@isd.co.kr>
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <26674037.89306.1573104789618.JavaMail.cash@211.53.128.215>
MIME-Version: 1.0
X-Originating-IP: [217.217.179.17]
X-Spam-Score: 5.8 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [211.53.128.215 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iSaQW-003DS3-RQ
Subject: [V9fs-developer] Investment opportunity
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
Reply-To: Peter Wong <peterwongpwhk@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,

Find the attached mail very confidential. reply for more details

Thanks.
Peter Wong




----------------------------------------------------
This email was sent by the shareware version of Postman Professional.



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
