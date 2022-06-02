Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CE653BBE5
	for <lists+v9fs-developer@lfdr.de>; Thu,  2 Jun 2022 17:54:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nwn9X-00062Q-2Q; Thu, 02 Jun 2022 15:54:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <soc.salesmktgs@sharjahoxygen.com>)
 id 1nwn9T-00062K-B4
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jun 2022 15:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dmHRIGS2rljxIOknV4VU/p/O9X/mSEPbWDlpvd9lQ3I=; b=HwmDNSwUOiaCU/+0hj+1N9yMbj
 3c/K174nEX+MQ54KslEqzDyUYD+5tc0bTCzVEhLArIiURoqbja1DBTr12CM+cSP0pMBtTIJv0XVe8
 IwE4TUP+TePEbFXIf1HIFGfbqxaTnnRvd+sYATjLo6t1l3HsSh6HWPtaCscEoqmgd9jU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dmHRIGS2rljxIOknV4VU/p/O9X/mSEPbWDlpvd9lQ3I=; b=O
 cRrwUpRPQ9d3nhvfJ7J/UGW7GwuRcWA7OJqpNSw8FHst7fljcY7dETbkMIezwmd+j/q/xmpTBf+DT
 wuY2sL63wyHIPsbJNmqpsH1I+8o8yS7QAjuSADFoDDjZJPVCQZl0UuM/1OTBahkT5saOMA7kXH23S
 n1IfVbWcrYGUmgvE=;
Received: from [143.110.184.46] (helo=unicodetestserver2021.in)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nwn9Q-0003Bl-2u
 for v9fs-developer@lists.sourceforge.net; Thu, 02 Jun 2022 15:54:23 +0000
Received: by unicodetestserver2021.in (Postfix, from userid 33)
 id 09F913C939B; Thu,  2 Jun 2022 21:05:19 +0530 (IST)
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 2 Jun 2022 21:05:19 +0530
From: SOC SALES & MARKETING <soc.salesmktgs@sharjahoxygen.com>
Message-ID: <636d6d0cec91d3600290e867afabbdd4@dentaltogether.com>
MIME-Version: 1.0
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good day, Sir With our experience in the Gas Industry, we
 provide high quality and approved international standards to large and small
 companies in the various types of industries Our Primary activities are:
 -Lease and Sales - Cylinders, Vaporizer, ISO and Storage Tanks -Fabrication
 and Supply - Cylinder Quads / Racks / Carry Racks / Regulating Manifolds
 -Supply of Gases - Indu [...] 
 Content analysis details:   (6.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [143.110.184.46 listed in dnsbl-1.uceprotect.net]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [143.110.184.46 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [143.110.184.46 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1nwn9Q-0003Bl-2u
Subject: [V9fs-developer] Gas producer and supplier of gas related equipment
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
Reply-To: soc.salesmktg@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good day,  Sir
With our experience in the Gas Industry, we provide high quality and approved international standards to large and small companies in the various types of industries

Our Primary activities are:
-Lease and Sales - Cylinders, Vaporizer, ISO and Storage Tanks
-Fabrication and Supply - Cylinder Quads / Racks / Carry Racks / Regulating Manifolds
-Supply of Gases - Industrial, Medical, Specialty Gases and Gas Mixtures
-Liquid Bulk Supply - Ammonia, Propane, LPG, Carbon Dioxide, Argon, Nitrous Oxide, Oxygen and Nitrogen
-Installation and Commissioning - Liquid and Gas Plants, Gas Filling Stations with Storage Tanks Facilities
-Trading - All Types of Gas accessories and Gas related Equipments

We carry out Hydrotesting of cylinders, racks and tube trailers along with the complete refurbishment of skids including repair of frames and manifolds, blasting, painting and other services as per customer requirement.

If you need our service, pls inform me

 
 
 
Regards,
RAHUL NARAIN
General Manager - Projects, Exports & Bulk Sales
 
SHARJAH OXYGEN COMPANY (SOC)
P.O. Box 800, Sharjah, UAE
Tel:  971-6-529 1199 Ext 23 / Fax:  971-6-529 1099

Skype email: soc.salesmktg@hotmail.com
 
SOC Website: http://www.sharjahoxygen.com
Working Hours: 8:00AM to 6:00PM (Sunday to Thursday)



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
