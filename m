Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A04B337AD0
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Mar 2021 18:28:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lKP6R-0006Gc-Bu; Thu, 11 Mar 2021 17:28:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@alsumooduae.com>) id 1lKP6P-0006Fv-HV
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Mar 2021 17:28:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=edyd70Q4F6lnaYl34SKy+WdiAeD48NUndFzbSXJi9dg=; b=IbL2fVHr4PLxOA8ZFObBTiTLeF
 ajcPW39b3kgu5XA8HiCIqxILoU5VIKCgyrdTyVM858A6Zb2MmH438IHf3j7eYNKdZgr3DH4dISBcN
 q81TmYddVylSHftxiZHm59zbijGnefSYx4B9d4laSpEBRKS+JhBtydX5GPwhdCMqUXKM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=edyd70Q4F6lnaYl34SKy+WdiAeD48NUndFzbSXJi9dg=; b=M
 vSXDigFDvydyCXfW5KqwjtkI0SdgkKjLYgLRyFbvy2V8H0y3xagrhsbSmbnf4bkXxNtwPQwjUXCWT
 bCIvJUHaxEqyX8vlt/jx32/vPD4oyYPS9l0Aj81W/saW9oORsA8S7C7figdn7l83pL2tgnxKeO+ow
 B3xMEkBJWsCUdHPQ=;
Received: from ns1003676.ip-92-204-132.us ([92.204.132.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lKP60-0003uY-V0
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Mar 2021 17:27:59 +0000
Received: from [167.114.136.9] (port=51863)
 by ns1003676.ip-92-204-132.us with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94)
 (envelope-from <info@alsumooduae.com>) id 1lKP5s-0004ot-KU
 for v9fs-developer@lists.sourceforge.net; Thu, 11 Mar 2021 17:27:28 +0000
From: Brenda C.Y. Pi <info@alsumooduae.com>
To: v9fs-developer@lists.sourceforge.net
Date: 11 Mar 2021 18:27:27 +0100
Message-ID: <20210311182727.975C0C0FD51F5707@alsumooduae.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - ns1003676.ip-92-204-132.us
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - alsumooduae.com
X-Get-Message-Sender-Via: ns1003676.ip-92-204-132.us: authenticated_id:
 ahmed@junahmed46.ourfirm.com
X-Authenticated-Sender: ns1003676.ip-92-204-132.us: ahmed@junahmed46.ourfirm.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 3.2 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?92.204.132.28>]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: alsumooduae.com]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [92.204.132.28 listed in psbl.surriel.com]
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [92.204.132.28 listed in bl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lKP60-0003uY-V0
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] INVITATION RO BID RFQ-SCM04486273
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

Dear v9fs-developer
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
