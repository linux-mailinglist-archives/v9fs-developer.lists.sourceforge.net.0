Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A296206B
	for <lists+v9fs-developer@lfdr.de>; Mon,  8 Jul 2019 16:24:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hkUYm-0002Ce-12; Mon, 08 Jul 2019 14:24:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <infos@carnuville.top>) id 1hkUYi-0002CH-Qn
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Jul 2019 14:24:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UIJnfJnSYFBXRIaEgZMjitcieN6sUxik+eyhkBFwO7w=; b=gOHP4r4L3ceYq8SEWpkOQDdy7P
 vq3XD3l0BLL3yfjxhYduMJauM0yeyO4U2eEFEk5Ovr3ij8gkJ80V+oUOFCUtiAitZwJvnPsnLHk0k
 PfAHnHlVSgfNMenzkETJwnW93v/OStigyvnfSPZbN6YdWZnMFH9eLe4DV2fIUUIZL5j0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UIJnfJnSYFBXRIaEgZMjitcieN6sUxik+eyhkBFwO7w=; b=f
 dWXWCn5eGTu2p8cphO/QTuwIUcojyPPoMu1KKAInND/ME7asdJs4M7g+bTk5XRjv7BZlEDQSjf+E2
 B6TjuRL3TnkOvf5ZnVr5v40lTkI4+HLHimuOKQGpcZcqrap0VdCfQlKwHp8gPpd3xedp/4hbn28NF
 64rN0AdyKWHkYTNU=;
Received: from smtp02.smtpout.orange.fr ([80.12.242.124]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.90_1) id 1hkUZ2-00ANWk-6i
 for v9fs-developer@lists.sourceforge.net; Mon, 08 Jul 2019 14:24:23 +0000
Received: from durker ([10.163.22.115]) by mwinf5d55 with ME
 id aEQC2000U2UzAwA03EQCDh; Mon, 08 Jul 2019 16:24:12 +0200
X-ME-Helo: durker
X-ME-Date: Mon, 08 Jul 2019 16:24:12 +0200
X-ME-IP: 10.163.22.115
Date: Mon, 8 Jul 2019 14:24:12 +0000
To: v9fs-developer@lists.sourceforge.net
From: with a brand new card terminal <infos@carnuville.top>
Message-ID: <feae53a1a7a89d4a2f5e29a7d9fc91c3@durker>
X-Priority: 3
X-Mailer: poilpotee
MIME-Version: 1.0
X-Spam-Score: 7.5 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: comptapasdesouci.fr]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.124 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: comptapasdesouci.fr]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: comptapasdesouci.fr]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_IMAGE_RATIO_08    BODY: HTML has a low ratio of text to image area
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 T_REMOTE_IMAGE         Message contains an external image
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hkUZ2-00ANWk-6i
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Reach out more customers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

	
Taking card payments
has never been so easy!	
Reach out more customers with a brand new card terminal	
Compare quotes for free	
main
SAVE UP TO 40% on card processing fees with the right payment system for your business !	
Wireless payments
Wide range of terminals
Speed up checkout
Be better protected 
against fraud



Follow this link to stop receiving messages about Card Terminals.
You have the right of access, rectification, opposition and consent, which you have access on this web page: Privacy policy.
You are receiving this message on your email address because you are in our list of managers and professionals.
ASCPM - 5 Avenue du General de Gaulle - SAINT MANDE - France - R.C.S. 814 073 060 CRETEIL


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
