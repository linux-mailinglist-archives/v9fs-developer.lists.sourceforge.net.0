Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E641F84C31F
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Feb 2024 04:32:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rXYfb-00051W-U5;
	Wed, 07 Feb 2024 03:32:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ap@sieca.int>) id 1rXYfZ-00051B-Hv
 for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Feb 2024 03:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1QpUZLE+krUSwuAais5N6iTN+XSUTlKqcfl6YIrO1Jw=; b=OuPMc7czcTO7kqfTH3sgF+ehwF
 37dvOmcj2voATJZMCnX8AHKzrjRPBDWvAPQGTTcyMc9oP8VY63bAox/jD4xp9vJ007zotnEgmJLgb
 MMgZUU9r+sBMQ6cvIF87H7MshnKzVQFijpnUOMugoIPwwBkuaZCpAvmLGgRiH0Kky/T8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1QpUZLE+krUSwuAais5N6iTN+XSUTlKqcfl6YIrO1Jw=; b=Ie+QqTooBqsrXap1FCcruRavTn
 oAKJ0fehuiJBT9oRXoNaMqVg6TvPiioPexZ8aOIRM3plhMRSzPAqiYq27MoeL8Jtp7sE3C2QssWWy
 Ew2vP6suJe2OfS4TngvH5GM/NTlBjD9DntuD7zZcxoZ+pLf4E1V8iQhrtMUPM9oEUUlg=;
Received: from [168.234.48.179] (helo=antispam.sieca.int)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rXYfY-0002em-OC for v9fs-developer@lists.sourceforge.net;
 Wed, 07 Feb 2024 03:32:18 +0000
Received: from mail.sieca.int ([192.168.32.103])
 by antispam.sieca.int  with ESMTP id 413B31av017546-413B31bB017546
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=CAFAIL)
 for <v9fs-developer@lists.sourceforge.net>; Sat, 3 Feb 2024 05:03:04 -0600
DKIM-Signature: v=1; a=rsa-sha256; d=sieca.int; s=keysieca; c=relaxed/relaxed; 
 t=1706955853; h=from:subject:to:date:message-id;
 bh=1QpUZLE+krUSwuAais5N6iTN+XSUTlKqcfl6YIrO1Jw=;
 b=SE6QpCpivMgg0EMKC7Ox2VH5xjQJX5kSsuBu9uIBa/+I1pbNbr/ASCc+3J4xxsk3M60Ye6k9WSt
 HVMQxurZFHNOKDGlNvYYU6Se445ZjAQFE+3hOpb1qnn71NrBS6u5c4cgjJcod3vZOEiMk1z9NkSdI
 ZYKKEr4RCpwwsS0kTG4=
Received: from SRVEXG02.sieca.local (172.16.100.151) by SRVEXG01.sieca.local
 (172.16.100.152) with Microsoft SMTP Server (TLS) id 15.1.466.34; Sat, 3 Feb
 2024 04:24:08 -0600
Received: from [156.96.112.132] (192.168.32.1) by SRVEXG02.sieca.local
 (192.168.32.102) with Microsoft SMTP Server id 15.1.466.34 via Frontend
 Transport; Sat, 3 Feb 2024 04:24:08 -0600
MIME-Version: 1.0
Content-Description: Mail message body
To: <v9fs-developer@lists.sourceforge.net>
Date: Sat, 3 Feb 2024 02:24:21 -0800
Message-ID: <5ff2973a-19b7-4709-9849-8c53f33267b6@SRVEXG02.sieca.local>
X-C2ProcessedOrg: cc585aa4-49c8-4bd5-8e98-855448189431
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi there I hope you are well and high in spirit? Before I
 continue, let me humbly apologize for coming into your space unsolicited.
 Nonetheless, I take solace in the fact that it is with the best intention
 and [...] 
 Content analysis details:   (7.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 ADVANCE_FEE_4_NEW      Appears to be advance fee fraud (Nigerian 419)
X-Headers-End: 1rXYfY-0002em-OC
Subject: [V9fs-developer] PERSONAL
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
From: Anna Pechorin via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: pechorinanna@gmail.com
Cc: Anna Pechorin <ap@sieca.int>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi there

I hope you are well and high in spirit? Before I continue, let me humbly apologize for coming into your space unsolicited. Nonetheless, I take solace in the fact that it is with the best intention and for our mutual benefit.

I chose you among other contacts that I came across in my search for someone who can partner with me in investment venture. It took a great deal of brain storming for me to arrive at this decision owing to my present predicament, which I will explain to you in my follow up email. I hope that my contact with you will be private, confidential and fruitful.

Presently I am totally indisposed to carry out financial transactions due to restrictions relating to the suspicious death of my husband, Ivan Pechorin who was totally against the Ukraine war. Before long it would be discovered that President Vladimir Putin murdered my husband. My strongest desire is to partner with you in investing my family money domiciled outside the shores of Russia and you becoming my fund manager. I have no problem investing this money in your country if it offers investment friendly environment. 

It will be an absolute pleasure, if you would have the wherewithal to handle this project to my satisfaction. Every detail concerning this project would be laid bare to you upon indication of your interest.

Please strictly respond to pechorinanna@gmail.com


Best regards

Anna Pechorin.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
