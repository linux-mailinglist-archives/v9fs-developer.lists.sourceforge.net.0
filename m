Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E3075D7D9
	for <lists+v9fs-developer@lfdr.de>; Sat, 22 Jul 2023 01:16:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMzMR-0004pC-Eh;
	Fri, 21 Jul 2023 23:16:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@pphvpank.co.uk>) id 1qMzMQ-0004p5-4Z
 for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Jul 2023 23:16:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S0s/Iln+q2DLmOO0neX3dfmP3NatT+0U5WMbvdYWy6w=; b=Hj3QQiSjXguQyhLTdYVGX3RAyb
 WujYNznceBNjGN63ibM8tHN0pm5d2wjDt1OkwwnpksWqN+oBIkd9m/O/T+qX+lmT7MzpoAeLrFiu0
 +qwCU+RaY3BApbZPz6p/QEASoLdm8H7ScqBscW7xXsghtX/nPyRShki6CzEDtI269Iig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=S0s/Iln+q2DLmOO0neX3dfmP3NatT+0U5WMbvdYWy6w=; b=V
 tli7kC45SEt5tHCnAeZbSLEPBr2FQ5K89hm5TFSt/oN8UjoYyTQE63bjofxlG0dURKSTNNCdkDLXX
 5XIisJFHa3+Azf/cXAyUWhSKsWqu2oBKC67UmjcbGkJjBckExr6tXME0BoGF+wPf2JARd5xyDihAl
 Hq6IWtPxHFSHJj54=;
Received: from mail.legalexgs.com ([200.57.142.18])
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.95)
 id 1qMzMF-0003QT-Hc for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Jul 2023 23:16:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.legalexgs.com (Postfix) with ESMTP id 4BEC234BECADE
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 17:01:12 -0600 (CST)
Received: from mail.legalexgs.com ([127.0.0.1])
 by localhost (mail.legalexgs.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id t583F5nnpzoy for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 17:01:12 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
 by mail.legalexgs.com (Postfix) with ESMTP id 2E0A234BECADC
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 17:01:12 -0600 (CST)
X-Virus-Scanned: amavisd-new at legalexgs.com
Received: from mail.legalexgs.com ([127.0.0.1])
 by localhost (mail.legalexgs.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id fUpHXBjJ651f for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 17:01:12 -0600 (CST)
Received: from [93.95.27.54] (unknown [93.95.27.54])
 by mail.legalexgs.com (Postfix) with ESMTPSA id 7323334BECADA
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 17:01:11 -0600 (CST)
From: info@pphvpank.co.uk
To: v9fs-developer@lists.sourceforge.net
Date: 21 Jul 2023 16:01:09 -0700
Message-ID: <20230721160108.0A4F3F53A8F171C7@pphvpank.co.uk>
MIME-Version: 1.0
X-Spam-Score: 6.3 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Did you received my first email?!! Our record shows that you
 have the same last name as our deceased client with no next of kin to his
 inheritance of 5m. Kindly responds to this email for details (hal [...] 
 Content analysis details:   (6.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [93.95.27.54 listed in zen.spamhaus.org]
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in
 DNS
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HK_SCAM                No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1qMzMF-0003QT-Hc
Subject: [V9fs-developer] Reply
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
Reply-To: halldnaendrew@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Did you received my first email?!! Our record shows that you have 
the same last name as our deceased client with no next of kin to 
his inheritance of 5m. Kindly responds to this email for details 
(halldnaendrew@gmail.com). treat this as vital.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
