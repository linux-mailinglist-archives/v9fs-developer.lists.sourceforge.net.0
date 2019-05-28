Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4767A2D2CB
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 May 2019 02:22:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hVmM8-0003KN-9k; Wed, 29 May 2019 00:22:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <guangmingcz@hdos.com>) id 1hVmM7-0003KG-CT
 for v9fs-developer@lists.sourceforge.net; Wed, 29 May 2019 00:22:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AqytHSJfVA8BJAsvoyxjFywGZonMms/+whWVCyeb7aw=; b=Q5lpMaLw85YPTLln3LEQ7Fmlry
 xwOSxXIZyONOg1XZc49Hqxm/yVvQlxQP2qcHWRgqGHiTZA3FaM79TO3Ss3cVaJkW6gNtCcHLdIGp+
 /sdCXqfr/ejGScsNOdOnhJCE8NR9Uev47JqARLqIHZ11vvQqcQl7lYjLH20zSfCrKM+s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Reply-To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AqytHSJfVA8BJAsvoyxjFywGZonMms/+whWVCyeb7aw=; b=n
 J+LXKRCHbrVqb7RDbUXt2XYazA9qVQo4khIYBKeU7NovXusNzu/F3rY8vCZnVs3yDDHK7kgYbuIHJ
 egoAh09Mp1cc4CIiqKuSYvcFa99Pk57mX34EhHuG4Vn17pdBwUCsrhyO8bgQYrDnf+5YHbiGEtqzB
 mLXdkL2QZeJWXQu8=;
Received: from [113.222.35.232] (helo=kkkk.com)
 by sfi-mx-1.v28.lw.sourceforge.com with smtp (Exim 4.90_1)
 id 1hVmM1-00A7XF-Ic
 for v9fs-developer@lists.sourceforge.net; Wed, 29 May 2019 00:22:11 +0000
Received: from ekkxzbk ([127.0.0.1]) (envelope-sender <guangmingcz@hdos.com>)
 by 127.0.0.1 with ESMTP
 for <v9fs-developer@lists.sourceforge.net>; Wed, 29 May 2019 06:22:36 +0800
Message-ID: <E400479503DA00532827EC5C895EEDE2@ekkxzbk>
From: =?utf-8?B?5bC55oC7?= <guangmingcz@hdos.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Wed, 29 May 2019 06:22:25 +0800
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Ivatwo 5
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (diqino3346[at]126.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.3 GAPPY_SUBJECT          Subject: contains G.a.p.p.y-T.e.x.t
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1hVmM1-00A7XF-Ic
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?6L2sJ+eZvO+8mlIgZTpSIGU6OnY5ZnMtZGV2?=
	=?utf-8?b?ZWxvcGVyLS3otYR45paZeOWcqHjpmYR45Lu2eOS4rQ==?=
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
Reply-To: diqino3346@126.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

  
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
