Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C555C4FCD66
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Apr 2022 06:01:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ne7iu-0000zh-SG; Tue, 12 Apr 2022 04:01:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <bakerfilm@webtel.shop>) id 1ne7iu-0000zb-2X
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 04:01:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:From:To:Reply-To:Content-Type:Subject:
 Date:MIME-Version:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d3jlsur3tDoasM9J0518ZG6zATSwqrjIqsqXk8wtKDM=; b=PdzQAIhjFCLhD02c8KlKginmmj
 iDR93orqouiRAot11tgLqwj12TPu5NfMYK8/uzKkP/xp6oCLYTKb6VuWnPWa8j16v2tqZu8cDo+HQ
 nU77duh86hjr4FVfBgM9sdhdRHtS1u0uLgZ+F+E/p7A3aSuJySm4jGFkoiKazSkY+3B4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:From:To:Reply-To:Content-Type:Subject:Date:MIME-Version:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=d3jlsur3tDoasM9J0518ZG6zATSwqrjIqsqXk8wtKDM=; b=E
 1RFm05Bx89P0NLWn8XN7JFGHFfeT3eosGutQUD7CD9Wn5WTrnMb+k9AMNtVa7XAkP0ptf418jVHTj
 2Vv6G1j+qYuwK9nG48k9G43hChaHEVzjkGceZBKlS0Jx6vfaEKmZQLhlXEzDC3vK9Ud4OqUm1uo9r
 QoBcCqg8K/jN1Dic=;
Received: from mail.webtel.shop ([135.148.47.126])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1ne7in-0007Oo-Am
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Apr 2022 04:01:46 +0000
Received: from mail.webtel.shop (localhost [127.0.0.1])
 by mail.webtel.shop (Postfix) with ESMTP id 4KcsV51T1Yz9pGd
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 04:01:33 +0000 (UTC)
Authentication-Results: mail.webtel.shop (amavisd-new);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=webtel.shop
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=webtel.shop; h=
 message-id:from:to:reply-to:content-type:subject:date
 :mime-version; s=dkim; t=1649736086; x=1652328087; bh=WMDMmP3I4y
 jy1R/qQaRhZg7cBbqQ8j5AUvAH7SD3u5I=; b=s2ZPgBeA9EWdhLqFGP9CsQKNEr
 E9dt4GLgqd1/xRnHoK0u2ToJXWX3wfXmy7/7yCiHW+uYm+lyL1Pv1k28Me/hiOuT
 eYCBB7bE5o0hdYOufYNWxLY2shyiFhllo/hLPQHGJp2XH2BQvTvsUooGu1afVQ3X
 +9Pp8Lf0J72bKQ4KG0RXoVCnhrcGvErYXl5vF9f8MfdT06PkzroHFXiDLCeCl2V7
 PczabyaZjuzuq4ac9ghW5ub5WosqhruRBpqtiAg8a+Jov2LhrYR4IAnnWpoe7Fxl
 N/zgZscQbCKOw4kAbBWB7I2faY5MnZcPuxDTTfbJnF0S39qBfj/wx1p2RkVQ==
X-Virus-Scanned: Debian amavisd-new at mail.webtel.shop
Received: from mail.webtel.shop ([127.0.0.1])
 by mail.webtel.shop (mail.webtel.shop [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id EnLyl5rvvry1 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 04:01:26 +0000 (UTC)
Received: from DESKTOP-2CMB3DV (unknown [41.190.14.153])
 by mail.webtel.shop (Postfix) with ESMTPSA id 4KcsLf5L3tz9pFc
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Apr 2022 03:55:06 +0000 (UTC)
MIME-Version: 1.0
X-Unsent: 1
Date: Mon, 11 Apr 2022 20:40:27 -0700
X-Priority: Normal
To: v9fs-developer@lists.sourceforge.net
From: "BAKER MCKENZIE" <bakerfilm@webtel.shop>
Message-ID: <4C086BD015190310DD5374F9F02F1389D0615886@DESKTOP-2CMB3DV>
X-Spam-Score: 2.1 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  <p /><br />Greetings Dear <p />&nbsp; <p />My name is Viictor
 Hammer , I am a&nbsp;LAWYER from United Kingdom, Working for&nbsp; EFG EUB
 ERGASIAS, London branch. My reason for contacting you is to see [...] 
 Content analysis details:   (2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.6 HTML_IMAGE_ONLY_12     BODY: HTML: images with 800-1200 bytes of
 words
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 HTML_SHORT_LINK_IMG_1  HTML is very short with a linked image
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1ne7in-0007Oo-Am
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] INHERTANCE FUNDS CLIAM
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
Reply-To: bakerfilm@webtel.shop
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

<p /><br />Greetings Dear 
<p />&nbsp;
<p />My name is Viictor Hammer , I am a&nbsp;LAWYER from United Kingdom, Working for&nbsp; EFG EUB ERGASIAS, London branch. My reason for contacting you is to seek your consent to be presented as the beneficiary of a deceased customer whom you share the same last name and nationality with. 
<p />Your data matches the stated beneficiary on the lodgment receipt/document. I will send you&nbsp; scan copy of the document to review. 
<p />Kindly send your 1. Full Name 2. Address 3 Present Country. 
<p>Best regard,<br />Victor Hammer</p>
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
