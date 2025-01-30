Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6229DA227B7
	for <lists+v9fs-developer@lfdr.de>; Thu, 30 Jan 2025 03:43:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tdKWl-0002Do-JQ;
	Thu, 30 Jan 2025 02:43:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@robert-harewood.com>) id 1tdKWk-0002Di-U3
 for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Jan 2025 02:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mvh5d3Yy9+pJdcxOtGJ+ZfWoTgoev9WBv/H3/71Zn+o=; b=is3rw2dnp43So3ZfS5O4JneQuR
 lv8liI8DpykxaVx1Xu1a8ZTSC4qg2DJghcZw3PxO1Zk2tRxTfav1YihvjWAouzH4kV9Yg56T8D8eL
 WVQPznUV0eEQbW6H22cYbRLf1FEKFZI2UAF2Okry9/MbOtrJ2hHqscGDYVtbsrdJFJ9E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mvh5d3Yy9+pJdcxOtGJ+ZfWoTgoev9WBv/H3/71Zn+o=; b=UIj6Af823krr813ujhKknocKmB
 BMkFHTzM4gWgG3A+b9oJTkyIvIqkvswm3Gu2le9nSU3Sl2A7WWOMCUv5DF+Kcl2GMIqiwFKLzt2aV
 jh+MtuhTRQNmwWnEIaAfELIp217JE2dwTnqUE5iQxwWLbnU2j9j1vcEtzIsK9PrnZx7M=;
Received: from c15h13yj.mwprem.net ([122.17.164.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tdKWj-0002CG-KS for v9fs-developer@lists.sourceforge.net;
 Thu, 30 Jan 2025 02:43:34 +0000
Received: from [172.20.10.2] (unknown [96.44.191.155])
 by c15h13yj.mwprem.net (Postfix) with ESMTPA id 98F2942E7FD9
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Jan 2025 11:43:21 +0900 (JST)
Authentication-Results: c15h13yj.mwprem.net;
 arc=none smtp.remote-ip=96.44.191.155
ARC-Seal: i=1; a=rsa-sha256; d=mwprem.net; s=default; t=1738205002; cv=none;
 b=LfS7FLIJk5n21GeqPqFlyVtOVY3IO1d1c7LSljp1c57/x4sE/nBYVjLigNhpx+toRTGI0xSB17XzUF5dUe8rJxwzq4Adh31qg2rHHGBm6XntYg0qNtpNvm42Y/DZhT51i14+h2FyB7IsNrWE9xEjfpWaos6cwqWiPfzQATfEXdg=
ARC-Message-Signature: i=1; a=rsa-sha256; d=mwprem.net; s=default;
 t=1738205002; c=relaxed/relaxed;
 bh=mvh5d3Yy9+pJdcxOtGJ+ZfWoTgoev9WBv/H3/71Zn+o=;
 h=MIME-Version:Subject:To:From:Date:Message-Id;
 b=Ma+DbnnPcN9p1GD4Vd2cECVhh0DKnYadgT3ZovEdnuO9TQbI1/g9RLXyx/BtFCme8ECtKpB0rc5tVrWaT73I0FiuSqzcPdtPmzNoaZHnF3vgCr6N/+Z4Tp4RlYSalBdr7PjzX1CEfbnpzbIc8/oCh265NXHANLzibj6M5T6UfI4=
ARC-Authentication-Results: i=1; c15h13yj.mwprem.net
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Robert Harewood" <info@robert-harewood.com>
Date: Wed, 29 Jan 2025 20:43:20 -0600
Message-Id: <20250130024321.98F2942E7FD9@c15h13yj.mwprem.net>
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, Did you receive my email of 16/01/2025? I can get you
 investment capital for your company/projects. 
 Content analysis details:   (8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 5.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [122.17.164.56 listed in dnsbl-1.uceprotect.net]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [122.17.164.56 listed in sa-trusted.bondedsender.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [122.17.164.56 listed in bl.score.senderscore.com]
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1tdKWj-0002CG-KS
Subject: Re: [V9fs-developer] 16/01/2025.
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
Reply-To: Robert Harewood <rh@robert-harewood.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hello,

Did you receive my email of 16/01/2025?

I can get you investment capital for your company/projects.

Let me know when you are available to discuss the details.

Warm regards,

Robert Harewood,
Robert Harewood Advisory
The Broadgate Tower
20 Primrose St,
London, United Kingdom, EC2A 2EW.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
