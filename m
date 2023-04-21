Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D13C06EA14D
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Apr 2023 03:53:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ppfxq-0001NR-Vm;
	Fri, 21 Apr 2023 01:53:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <noreply@cpanel.com>) id 1ppfxp-0001NL-Vd
 for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 01:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:MIME-Version:Content-Type:
 Message-Id:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oOA3Yw4UraKctbx4Lx7QYJv1Bqu+3F1NdXBf6/yrin8=; b=FwVUfjccT/ne99uqAp1e9GWcpq
 Iu4Ok2nUwfsviV2mXFzldvyVHTh1sMhYCPHqCUrRK0Yguq6VX8lwhofyt7D4ZGEeMnpn+t6szRZSx
 AosBJNNjh1hU2x2iZRzbsWe2vHYxiYIovPCRDF60PCe3wwKX323AZovuyiCK3/YdheGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:MIME-Version:Content-Type:Message-Id:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oOA3Yw4UraKctbx4Lx7QYJv1Bqu+3F1NdXBf6/yrin8=; b=n
 P+NrR5af493L73waRxmBm2dXPYNVmaOw8Ed3DyaLwgry+0upYmhotXsKvr+Fseev1RR128EWyk+Hd
 gQksi69LUNv0FT+S/wdUp4Oc0n2+HcKQ1/7IQouR4nEYoKhhwYhnV2/JP9ogoCR4/UaBzelCKYqe0
 1X7jIjDV6fkPS+Ms=;
Received: from plmst.plintron.net ([122.15.162.183])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ppfxp-0000kJ-IF for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Apr 2023 01:53:30 +0000
Received: from [192.168.0.101] ([27.125.245.86]) (authenticated bits=0)
 by plmst.plintron.net (8.14.7/8.14.7) with ESMTP id 33L1ou0T008888
 for <v9fs-developer@lists.sourceforge.net>; Fri, 21 Apr 2023 07:23:20 +0530
Message-Id: <202304210153.33L1ou0T008888@plmst.plintron.net>
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 21 Apr 2023 09:53:14 +0800
X-Spam-Score: 5.6 (+++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  v9fs-developer@lists.sourceforge.net Blocked messages You
 have (9) pending messages on IMAP/ POP email Settings. UPDATE STORAGE 
 Content analysis details:   (5.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;
 id=noreply%40cpanel.com; ip=122.15.162.183;
 r=util-spamd-1.v13.lw.sourceforge.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1ppfxp-0000kJ-IF
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Action Required: Mailbox Storage Out Of Space
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
From: EMAIL ADMINISTRATOR via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: EMAIL ADMINISTRATOR <noreply@cpanel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

  v9fs-developer@lists.sourceforge.net Blocked messages
  
 You have (9) pending messages on IMAP/ POP email Settings.
  
  UPDATE STORAGE
  
 Notice: Your mailbox can no longer send or receive messages. update your storage
  
 Mailbox address:v9fs-developer@lists.sourceforge.net
 - 2023, All rights reserved
 
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
