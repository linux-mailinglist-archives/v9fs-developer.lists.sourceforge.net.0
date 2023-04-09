Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B946DC083
	for <lists+v9fs-developer@lfdr.de>; Sun,  9 Apr 2023 17:14:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1plWjy-0005Ep-Rq;
	Sun, 09 Apr 2023 15:14:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <j79150@mweb.co.za>) id 1plWjr-0005EP-1g
 for v9fs-developer@lists.sourceforge.net;
 Sun, 09 Apr 2023 15:13:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Reply-To:Content-Type:To:Subject:From:Sender:
 Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bTzAlBxFT69tqodBnO/5AyNgLNXOaFfyyVfphNmOLYU=; b=j0MizuoF3t/Ur4bbwf3iq6Z5ou
 pcuTQG4TT7s7GNHw6m2hNi1mWoYuMsBE0ant3LOcUi0qZVL552VyKRPEa70KmKuNr2OTK0lMALnHQ
 TVYCzVk5kGkpQJ2f5U3q8EKNsRg6ychCQyheB2C9A7EdByY6rSMg6z1URmEm4ibY1920=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Reply-To:Content-Type:To:Subject:From:Sender:Message-ID:Cc:
 MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bTzAlBxFT69tqodBnO/5AyNgLNXOaFfyyVfphNmOLYU=; b=PTXLBrOHSClecNMGeiTxqFQUfG
 SN5+jP/ce4pdMm32JgU13m+9SDRPsR7cGeYjJs+cKqHl7vAtHA0YHpEWXB65Wep3yzIM6zgErJFD+
 YlakgNaBPZPzW4MN6FvooG6+Wf7SD2OmuWj50j4fNrlbO+Dv/sohfcN0JYck1PItEW/g=;
Received: from [41.181.159.147] (helo=smtp01-smtpout08.jh.za.mtnbusiness.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1plWjq-000593-2u for v9fs-developer@lists.sourceforge.net;
 Sun, 09 Apr 2023 15:13:54 +0000
Received: from [41.113.236.124] (helo=111-PC)
 by smtp.mtnbusiness.co.za with esmtp (Blowfish SMTP)
 (envelope-from <j79150@mweb.co.za>) id 1plWhN-000OQp-Ll
 for v9fs-developer@lists.sourceforge.net; Sun, 09 Apr 2023 17:11:22 +0200
From: "Jon" <j79150@mweb.co.za>
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 9 Apr 2023 08:13:43 -0700
X-Spam-Score: 2.4 (++)
X-Spam-Report: BAYES_00=-1.9, FREEMAIL_FORGED_REPLYTO=2.095,
 FREEMAIL_REPLYTO_END_DIGIT=0.25, FSL_HELO_NON_FQDN_1=0.001,
 HELO_NO_DOMAIN=0.001, MISSING_MID=0.497, RDNS_NONE=0.793, SPF_SOFTFAIL=0.665, 
 * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
 *      [score: 0.0001]
 *  0.0 FSL_HELO_NON_FQDN_1 No description available.
 *  0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 *      digit *      [jon919782[at]outlook.com]
 *  0.7 SPF_SOFTFAIL SPF: sender does not match SPF record (softfail)
 *  0.5 MISSING_MID Missing Message-Id: header
 *  0.0 HELO_NO_DOMAIN Relay reports its domain incorrectly
 *  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
 *  2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I have been trying to reach you. Get back to me. 
 Content analysis details:   (6.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [41.181.159.147 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jon919782[at]outlook.com]
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.1 MISSING_MID            Missing Message-Id: header
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1plWjq-000593-2u
Subject: [V9fs-developer] HELLO..
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: jon919782@outlook.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1plWjy-0005Ep-Rq@sfs-ml-2.v29.lw.sourceforge.com>

Hello,

I have been trying to reach you.

Get back to me.

Regards,
Jon



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
