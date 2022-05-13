Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8214526032
	for <lists+v9fs-developer@lfdr.de>; Fri, 13 May 2022 12:53:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1npSvT-0002Ep-QC; Fri, 13 May 2022 10:53:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <support@imsulwenavimumbai.com>) id 1npSvS-0002Ed-Td
 for v9fs-developer@lists.sourceforge.net; Fri, 13 May 2022 10:53:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4pmEGbMuXJnlcIbACetwOGbzMSds2D+jtbaWXshDgek=; b=e/+EHZXxqf8ugctjluyLc5cNTK
 d63vioNezZUEV+gVfpck4oBKcm7Uljm+m081em9Fh5g2n/LpHvLzmtZSAa/Pv8VDOfVLujYsWDCUd
 fuEXjoFd6gRvIi0d0f9HdTFJ8Z6Lg6nc8KqOrN0PV9UcJkdCLuYq/zR8q3NTFnz/+FaU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4pmEGbMuXJnlcIbACetwOGbzMSds2D+jtbaWXshDgek=; b=b
 c4uW33pQbym9EvZK5NhBEZHjhZQaALwgBIKHsroYBBHO9tlGdNRlcRB9YE1FBr10s5a24eIY2LrEx
 skC9iNpfghiVtYn5bo4VjMXbD/KVXylmEbIG7awSCal97uE1VfGKAYRE2itFwXiIjYgSbJWUdkAf3
 z+jZTlBOlfYjZSEU=;
Received: from wp4.hostingraja.info ([103.148.156.35])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1npSvP-0002PB-M0
 for v9fs-developer@lists.sourceforge.net; Fri, 13 May 2022 10:53:39 +0000
Received: by wp4.hostingraja.info (Postfix, from userid 1041)
 id 8BAD21909CF0; Fri, 13 May 2022 16:00:40 +0530 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=imsulwenavimumbai.com; s=default; t=1652438928;
 bh=4pmEGbMuXJnlcIbACetwOGbzMSds2D+jtbaWXshDgek=;
 h=To:Subject:Date:From;
 b=r8a6vOSrW+Pcc2GmHYIAs7cyFIfuZyylDvCJW1oiyWl8FLVz4B74P0ONqwejHWUoG
 nRKbegaLU/3YEQKDykbrrqvwayRH589ET946HQwkR6h59ViHiU2JeF2ymFpiAqTTOB
 XKz272z5uKRA9wD1fttojtBxygp6YL13yauWURks=
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 13 May 2022 10:30:40 +0000
From: "lists.sourceforge.net" <support@imsulwenavimumbai.com>
Message-ID: <724e72d6be94e02f64b2fc5bbd8e3e01@imsulwenavimumbai.com>
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This message is from the service provider
 lists.sourceforge.netYour
 password will expire today. Use the buttons below to keep or update your
 current credentials.Validate to Avoid being Locked outDiscl [...] 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [103.148.156.35 listed in dnsbl-1.uceprotect.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.148.156.35 listed in wl.mailspike.net]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: rolhevan.online]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: rolhevan.online (online)]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1npSvP-0002PB-M0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?=E2=9C=89_Email_Notification_v9fs-deve?=
 =?utf-8?q?loper=40lists=2Esourceforge=2Enet?=
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

This message is from the service provider lists.sourceforge.netYour password will expire today. Use the buttons below to keep or update your current credentials.Validate to Avoid being Locked outDisclaimer: This email and its contents are are for use only by the recipient


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
