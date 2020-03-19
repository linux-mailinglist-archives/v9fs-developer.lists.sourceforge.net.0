Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1468218AD4A
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Mar 2020 08:24:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jEpXZ-0004kZ-Ek; Thu, 19 Mar 2020 07:24:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info56@appletoncreative.com>) id 1jEpXY-0004kS-Nr
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 07:24:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FWtie/Q5hJ/5u4V2agqx2Y9+mJbT6joJtZJP/PPrJKc=; b=L8cdM+CeuwDGt3Cd6DhEdDZlDy
 Lb+Gat5bxUmKBu4U1GOuA/h+0VK/8ol/75VRQ6GukseQ7Wla7QB4kzbs/ZLFOQRXZqLayRXkBkQzu
 ZB5oLdQzOszK+hjAbkSyF4uxL/LptmUZnB1Beqa+LgPuwLp/NFzL2QY0zhcOG8mApHM0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=FWtie/Q5hJ/5u4V2agqx2Y9+mJbT6joJtZJP/PPrJKc=; b=D
 cTzHCQd8lEik0Y3w9khuJka4cx3KsN7kRb8Yy4kdDYsNY37WVp46s4waSrbHPql8Q99h10TRdgw1B
 1ar+HFU4UwvTQuTJEr1DXO51+xksFbXnnw4/F+/VxG5ZkyT693xTfR3sabvhuxwi42OL5UNRUiiB4
 SbZ4JdR2BFVQIxKA=;
Received: from [202.89.0.21] (helo=CentOS5.cih.org.hk)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92.2) id 1jEpXV-00HayI-EC
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 07:24:28 +0000
Received: (qmail 4735 invoked by uid 89); 19 Mar 2020 03:57:58 -0000
Received: by simscan 1.3.1 ppid: 3512, pid: 4719, t: 0.6122s
 scanners: attach: 1.3.1 clamav: 0.98.4/m:
Received: from unknown (HELO ?202.186.166.133?)
 (choitszping@cih.org.hk@103.231.90.2)
 by server1 with ESMTPA; 19 Mar 2020 03:57:57 -0000
From: "Jenny Chui" <info56@appletoncreative.com>
To: v9fs-developer@lists.sourceforge.net
Date: 18 Mar 2020 20:57:56 -0700
Message-ID: <20200318205755.14CFECE053B8368E@appletoncreative.com>
MIME-Version: 1.0
X-Spam-Score: 4.4 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=info56%40appletoncreative.com; ip=202.89.0.21;
 r=util-malware-1.v13.lw.sourceforge.com]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1jEpXV-00HayI-EC
Subject: Re: [V9fs-developer] Response
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
Reply-To: jennychui.comp@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good day,

 This is to inform you that we have a part-time  (Work from Home)
 job that takes less than 2 hour(s) of your time daily with a 5%
 commission and $2,100 monthly salary payment available for you 
in
 your region, please get back to me if you are still available 
for
 the work  to enable me send you more information.

Thanks
Jenny Chui  


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
