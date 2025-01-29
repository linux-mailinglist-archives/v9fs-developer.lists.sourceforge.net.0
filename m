Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 340B8A22581
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jan 2025 22:10:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tdFK7-0003mQ-0b;
	Wed, 29 Jan 2025 21:10:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@robert-harewood.com>) id 1tdFK4-0003mJ-Aq
 for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Jan 2025 21:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M4nyHthqfKlab+XpfT4h8qVMcWqLs1hh7LkXbU+OH70=; b=hUPTbkkwD8C3/4UGxMe2eYIEX+
 wrgVdbssIQ/DlM2xKBVAPlJx/GmOswbCrb2qkKSoReu042Cp1L78v5jxXEGZ3C/ZEXyphfyDwy3Fa
 UkeEH+BopNcoHTpjdorF7C391rQW9fXFlOGIjqtpSkH5xkoEz2ze8HMw8psf5sayOwQc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M4nyHthqfKlab+XpfT4h8qVMcWqLs1hh7LkXbU+OH70=; b=Vwai78a/O7if6UdFbkS/qRV5oz
 p54JrdMhImXBnaPgF+3r6U8qfc/eFo7qeJ2em6rF8h38kfjMCgAUNGB3ZWqR3ABckDpqBVs45zHdt
 1B04pXnvDGaf/5ojsH65z3sV7usIf9RjgpCbmFon8tCACjiwhIjyXK4YxVl/+P+siJkQ=;
Received: from c15h13yj.mwprem.net ([122.17.164.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tdFK2-00087u-7j for v9fs-developer@lists.sourceforge.net;
 Wed, 29 Jan 2025 21:10:06 +0000
Received: from [192.168.0.141] (unknown [96.44.191.155])
 by c15h13yj.mwprem.net (Postfix) with ESMTPA id 4D31E429250B
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 30 Jan 2025 06:09:46 +0900 (JST)
Authentication-Results: c15h13yj.mwprem.net;
 arc=none smtp.remote-ip=96.44.191.155
ARC-Seal: i=1; a=rsa-sha256; d=mwprem.net; s=default; t=1738184988; cv=none;
 b=aV7JSm26JH0YJdy/fCNKIw18PFVj6T3i3y8fZf5SXtgwYwvIOf4/ArwcNLkfX0jZy9C0AlpvLV+dg7ynT+wm2mhMBeh1QVp5EQSroxeDTXlvO5lBFSV9vHKEsUehhcrQ+J67eBBmvwpTv9OjrRMFXNAJXKlbIKzI33w2BxbyRf0=
ARC-Message-Signature: i=1; a=rsa-sha256; d=mwprem.net; s=default;
 t=1738184988; c=relaxed/relaxed;
 bh=M4nyHthqfKlab+XpfT4h8qVMcWqLs1hh7LkXbU+OH70=;
 h=MIME-Version:Subject:To:From:Date:Message-Id;
 b=QkKVBOIH5NUVmWXnAHUrJBWnq9zouoNaGDOSvb15xqTpNlWbbVGSllo/Bz7Ked2cmoquDjbMBjhh43/2CaSEbxjokuw0PRBCVzs2V1M0Y3pHRAdyoXHI5CcFPz2kdMINN7FAUU1/oBOCIlLgTkRUrJ7a/I2Jq2KnsKRibtTdRtY=
ARC-Authentication-Results: i=1; c15h13yj.mwprem.net
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Robert Harewood" <info@robert-harewood.com>
Date: Wed, 29 Jan 2025 15:09:44 -0600
Message-Id: <20250129210947.4D31E429250B@c15h13yj.mwprem.net>
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, Did you receive my email of 15/01/2025? I can get you
 investment capital for your company/projects. 
 Content analysis details:   (8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [122.17.164.56 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [122.17.164.56 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 5.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [122.17.164.56 listed in dnsbl-1.uceprotect.net]
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1tdFK2-00087u-7j
Subject: Re: [V9fs-developer] 15/01/2025.
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

Did you receive my email of 15/01/2025?

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
