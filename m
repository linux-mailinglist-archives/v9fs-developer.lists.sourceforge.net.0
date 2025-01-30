Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E43ABA22A0C
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jan 2025 10:06:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tdQV5-00019I-TF;
	Thu, 30 Jan 2025 09:06:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jon.brennan@tasknomic.com>) id 1tdQV3-000199-A1
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Jan 2025 09:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qhPXDtX36VH1dBuRhQTg7JW2X59vA6pMbLgMkEPcRoI=; b=TokOpnfkQ1gv0FQlYVhJV7a1Lb
 hi1nnXUZw7PL4btq8Kj4403nheLvTLuxqcXAIkUy1xtfzUa3x/+s+7bOaqwGI2PzATCZHkg1r80Tr
 Z6mWJLa/7zDHmDDku2VdTsC3CkSPMdJfnFwN+TrFkOuNtw8mbqTvPlYZuw0rOOyvMVvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=qhPXDtX36VH1dBuRhQTg7JW2X59vA6pMbLgMkEPcRoI=; b=k
 vmMiUiVAkk+TbFkeP//ojNokqHyFjM6UeMjr+t54ciDydM44cHWOY9PMJWAZUYBTIUSYGxy8BlCnt
 AFTiAYaP7yKU6UVEiPYrXIDF962wW4z0krswe/EZa1DEZrbDowHVzq5Frt4j4Y7jfQ/kX90+lND+M
 h7UYy9sGTnkeTvcI=;
Received: from mail.tasknomic.com ([141.95.16.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tdQUy-0006bt-V7 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Jan 2025 09:06:13 +0000
Received: by mail.tasknomic.com (Postfix, from userid 1002)
 id BAF5CA41F9; Thu, 30 Jan 2025 10:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tasknomic.com;
 s=mail; t=1738227956;
 bh=qhPXDtX36VH1dBuRhQTg7JW2X59vA6pMbLgMkEPcRoI=;
 h=Date:From:To:Subject:From;
 b=VB2jLpxJnZ0h4sy1DfVYu4yiZGkwiKw+rhS5JTDiDQk5tNc6zcGLBzqDlddkjHU4a
 O/cK/QKnlnPgkSAexRG3iO3KSEyB7JqZTq14me/YZT9vNnU2ise2/+shwpnDvfwsWV
 3DeSa3b5yubo3BhKpcK0bcZKvSVmWyILcMM6bhS4F53iVyxxQgNJVWWbD736YGKfbr
 +H7l1SC+ksfgpRaSc1++pl+nuovhV1RhXwQRI5VeJov82bIkuJCXt2ZaIxdw5c1HYh
 sKhnE4Ec5TNmycrXUPEiS9VNdxd5aAqDYA13KP1EEYC3Z4qSV8+slUxWZ7HaqXkTN5
 jO9pMRIiqEiWQ==
Received: by mail.tasknomic.com for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Jan 2025 09:05:31 GMT
Message-ID: <20250130084500-0.1.gv.wuxf.0.cmfqe6a2o9@tasknomic.com>
Date: Thu, 30 Jan 2025 09:05:31 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.tasknomic.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 How often do companies give up comfortable space for customers
 due to fire safety requirements? We produce wall-mounted chairs that take
 up only 12 cm of space when folded. When needed, it provides a comfortable
 place to sit, and when the escape route needs to be clear,
 it virtually disappears a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [141.95.16.86 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [141.95.16.86 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tdQUy-0006bt-V7
Subject: [V9fs-developer] Informacje o dostawie
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
From: Jon Brennan via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Jon Brennan <jon.brennan@tasknomic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi,

How often do companies give up comfortable space for customers due to fire safety requirements?

We produce wall-mounted chairs that take up only 12 cm of space when folded. When needed, it provides a comfortable place to sit, and when the escape route needs to be clear, it virtually disappears against the wall.

Would you like to check how a simple solution can so significantly improve the functionality of a space?


Sincerely
Jon Brennan


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
